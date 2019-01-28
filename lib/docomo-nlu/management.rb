# frozen_string_literal: true
module DocomoNlu
  module Management
    NAMESPACE = (DocomoNlu.config.nlu_version == "v2.6" ? "V26" : "V23" ).freeze

    module V23
      autoload :Account,            "docomo-nlu/management/V23/account"
      autoload :AIMLBase,           "docomo-nlu/management/V23/aiml_base"
      autoload :Base,               "docomo-nlu/management/V23/base"
      autoload :Bot,                "docomo-nlu/management/V23/bot"
      autoload :Config,             "docomo-nlu/management/V23/config"
      autoload :DefaultPredicate,   "docomo-nlu/management/V23/default_predicate"
      autoload :Entry,              "docomo-nlu/management/V23/entry"
      autoload :MultipartBase,      "docomo-nlu/management/V23/multipart_base"
      autoload :Map,                "docomo-nlu/management/V23/map"
      autoload :NGWord,             "docomo-nlu/management/V23/ng_word"
      autoload :OKWord,             "docomo-nlu/management/V23/ok_word"
      autoload :OrganizationMember, "docomo-nlu/management/V23/organization_member"
      autoload :Organization,       "docomo-nlu/management/V23/organization"
      autoload :PredicateName,      "docomo-nlu/management/V23/predicate_name"
      autoload :ProjectMember,      "docomo-nlu/management/V23/project_member"
      autoload :Project,            "docomo-nlu/management/V23/project"
      autoload :Property,           "docomo-nlu/management/V23/property"
      autoload :Provider,           "docomo-nlu/management/V23/provider"
      autoload :ScenarioProject,    "docomo-nlu/management/V23/scenario_project"
      autoload :ScenarioUtil,       "docomo-nlu/management/V23/scenario_util"
      autoload :Scenario,           "docomo-nlu/management/V23/scenario"
      autoload :Set,                "docomo-nlu/management/V23/set"
      autoload :TaskProject,        "docomo-nlu/management/V23/task_project"
    end
    module V26
      autoload :Account,            "docomo-nlu/management/V26/account"
      autoload :AIMLBase,           "docomo-nlu/management/V26/aiml_base"
      autoload :Base,               "docomo-nlu/management/V26/base"
      autoload :Bot,                "docomo-nlu/management/V26/bot"
      autoload :Config,             "docomo-nlu/management/V26/config"
      autoload :DefaultPredicate,   "docomo-nlu/management/V26/default_predicate"
      autoload :Entry,              "docomo-nlu/management/V26/entry"
      autoload :MultipartBase,      "docomo-nlu/management/V26/multipart_base"
      autoload :Map,                "docomo-nlu/management/V26/map"
      autoload :NGWord,             "docomo-nlu/management/V26/ng_word"
      autoload :OKWord,             "docomo-nlu/management/V26/ok_word"
      autoload :OrganizationMember, "docomo-nlu/management/V26/organization_member"
      autoload :Organization,       "docomo-nlu/management/V26/organization"
      autoload :PredicateName,      "docomo-nlu/management/V26/predicate_name"
      autoload :ProjectMember,      "docomo-nlu/management/V26/project_member"
      autoload :Project,            "docomo-nlu/management/V26/project"
      autoload :Property,           "docomo-nlu/management/V26/property"
      autoload :Provider,           "docomo-nlu/management/V26/provider"
      autoload :ScenarioProject,    "docomo-nlu/management/V26/scenario_project"
      autoload :ScenarioUtil,       "docomo-nlu/management/V26/scenario_util"
      autoload :Scenario,           "docomo-nlu/management/V26/scenario"
      autoload :Set,                "docomo-nlu/management/V26/set"
      autoload :TaskProject,        "docomo-nlu/management/V26/task_project"
    end

    Account = const_get "DocomoNlu::Management::#{NAMESPACE}::Account"
    AIMLBase = const_get "DocomoNlu::Management::#{NAMESPACE}::Account"
    Base = const_get "DocomoNlu::Management::#{NAMESPACE}::Base"
    Bot = const_get "DocomoNlu::Management::#{NAMESPACE}::Bot"
    Config = const_get "DocomoNlu::Management::#{NAMESPACE}::Config"
    Entry = const_get "DocomoNlu::Management::#{NAMESPACE}::Entry"
    DefaultPredicate = const_get "DocomoNlu::Management::#{NAMESPACE}::DefaultPredicate"
    MultipartBase = const_get "DocomoNlu::Management::#{NAMESPACE}::MultipartBase"
    Map = const_get "DocomoNlu::Management::#{NAMESPACE}::Map"
    NGWord = const_get "DocomoNlu::Management::#{NAMESPACE}::NGWord"
    OKWord = const_get "DocomoNlu::Management::#{NAMESPACE}::OKWord"
    OrganizationMember = const_get "DocomoNlu::Management::#{NAMESPACE}::OrganizationMember"
    Organization = const_get "DocomoNlu::Management::#{NAMESPACE}::Organization"
    PredicateName = const_get "DocomoNlu::Management::#{NAMESPACE}::PredicateName"
    ProjectMember = const_get "DocomoNlu::Management::#{NAMESPACE}::ProjectMember"
    Project = const_get "DocomoNlu::Management::#{NAMESPACE}::Project"
    Property = const_get "DocomoNlu::Management::#{NAMESPACE}::Property"
    Provider = const_get "DocomoNlu::Management::#{NAMESPACE}::Provider"
    ScenarioProject = const_get "DocomoNlu::Management::#{NAMESPACE}::ScenarioProject"
    ScenarioUtil = const_get "DocomoNlu::Management::#{NAMESPACE}::ScenarioUtil"
    Scenario = const_get "DocomoNlu::Management::#{NAMESPACE}::Scenario"
    Set = const_get "DocomoNlu::Management::#{NAMESPACE}::Set"
    TaskProject = const_get "DocomoNlu::Management::#{NAMESPACE}::TaskProject"

  end
end
