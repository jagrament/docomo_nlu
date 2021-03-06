# frozen_string_literal: true

RSpec.describe DocomoNlu::Management::Scenario do
  before do
    DocomoNlu::Management::Base.access_token = DocomoNlu.config.admin_access_token
  end

  describe "#scenarios" do
    let(:project_id) { 48 }
    let(:bot_id) { "test_bot" }

    it "Create a scenario" do
      VCR.use_cassette("/management/scenario/create") do
        scenario = described_class.new(userScenarios: [{ scenarioId: "test_scenario", description: "test", compileFlag: true }])
        scenario.prefix_options["project_id"] = project_id
        scenario.prefix_options["bot_id"] = "test_bot"
        expect(scenario.save).to eq true
      end
    end

    it "Get all scenarios" do
      VCR.use_cassette("/management/scenario/index") do
        scenarios = described_class.all(params: { project_id: project_id, bot_id: bot_id })
        expect(scenarios.first.userScenarios.first.scenarioId).not_to be_nil
      end
    end

    it "Conflict scenario Id" do
      VCR.use_cassette("/management/scenario/create_conflict") do
        scenario = described_class.new(userScenarios: [{ scenarioId: "test_scenario", description: "test", compileFlag: true }])
        scenario.prefix_options["project_id"] = project_id
        scenario.prefix_options["bot_id"] = "test_bot"
        expect { scenario.save }.to raise_error(ActiveResource::ResourceConflict)
      end
    end

    it "Get a scenario" do
      VCR.use_cassette("/management/scenario/show") do
        scenario = described_class.find("test_scenario", params: { project_id: project_id, bot_id: bot_id })
        expect(scenario.userScenarios.first.scenarioId).to eq "test_scenario"
      end
    end

    it "Update a scenario (compileFlag)" do
      VCR.use_cassette("/management/scenario/show") do
        scenario = described_class.find("test_scenario", params: { project_id: project_id, bot_id: bot_id })
        VCR.use_cassette("/management/scenario/update") do
          scenario.userScenarios.map {|us| us.compileFlag = true }
          expect(scenario.save).to eq true
        end
      end
    end

    describe "#aiml" do
      context "Upload file" do
        it "Upload AIML" do
          VCR.use_cassette("/management/scenario/upload_aiml") do
            scenario = described_class.new(project_id: project_id, bot_id: bot_id)
            scenario.prefix_options[:method] = :aiml
            response = scenario.upload(stub_file("test.aiml"))
            expect(response).to eq true
          end
        end

        it "Upload dat" do
          VCR.use_cassette("/management/scenario/upload_dat") do
            scenario = described_class.new(project_id: project_id, bot_id: bot_id)
            scenario.prefix_options[:method] = :dat
            response = scenario.upload(stub_file("test.dat"))
            expect(response).to eq true
          end
        end

        it "Upload zip" do
          VCR.use_cassette("/management/scenario/upload_archive") do
            scenario = described_class.new(project_id: project_id, bot_id: bot_id)
            scenario.prefix_options[:method] = :archive
            response = scenario.upload(stub_file("test.zip"))
            expect(response).to eq true
          end
        end
      end

      context "Download file" do
        it "Donwload aiml" do
          scenario = described_class.new(project_id: project_id, bot_id: bot_id)
          VCR.use_cassette("/management/scenario/download_aiml") do
            scenario.prefix_options[:method] = :aiml
            scenario.download("test")
            expect(scenario.file).not_to be_nil
          end
        end
      end

      it "Deploy scenario" do
        VCR.use_cassette("/management/scenario/deploy") do
          scenario = described_class.new(project_id: project_id, bot_id: bot_id)
          expect(scenario.deploy).to eq true
        end
      end
    end

    it "Delete a scenario" do
      VCR.use_cassette("/management/scenario/show") do
        scenario = described_class.find("test_scenario", params: { project_id: project_id, bot_id: bot_id })
        VCR.use_cassette("/management/scenario/delete") do
          expect(scenario.destroy("test_scenario").code).to eq "204"
        end
      end
    end
  end
end
