connection: "chronicle"

# include all the views
include: "/views/**/*.view.lkml"
include: "/sample_dashboard.dashboard.lookml"

datagroup: custom_visualization_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: custom_visualization_default_datagroup

explore: job_metadata {}

explore: ioc_matches {}

explore: entity_enum_value_to_name_mapping {}

explore: rule_detections {
  join: rule_detections__rulesets {
    view_label: "Rule Detections: Rulesets"
    sql: LEFT JOIN UNNEST(${rule_detections.rulesets}) as rule_detections__rulesets ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__assets {
    view_label: "Rule Detections: Detection Assets"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__assets}) as rule_detections__detection__assets ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields {
    view_label: "Rule Detections: Detection Fields"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__fields}) as rule_detections__detection__fields ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__users {
    view_label: "Rule Detections: Detection Users"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__users}) as rule_detections__detection__users ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes {
    view_label: "Rule Detections: Detection Outcomes"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__outcomes}) as rule_detections__detection__outcomes ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__ip {
    view_label: "Rule Detections: Detection Events Src Ip"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events__src__ip}) as rule_detections__detection__events__src__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__mac {
    view_label: "Rule Detections: Detection Events Src Mac"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events__src__mac}) as rule_detections__detection__events__src__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events {
    view_label: "Rule Detections: Detection Events"
    sql: LEFT JOIN UNNEST(${rule_detections.detection__events}) as rule_detections__detection__events ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__ip {
    view_label: "Rule Detections: Detection Events About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about__ip}) as rule_detections__detection__events__about__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__mac {
    view_label: "Rule Detections: Detection Events About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about__mac}) as rule_detections__detection__events__about__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about {
    view_label: "Rule Detections: Detection Events About"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.about}) as rule_detections__detection__events__about ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__ip {
    view_label: "Rule Detections: Detection Events Target Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__ip}) as rule_detections__detection__events__target__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__nat_ip {
    view_label: "Rule Detections: Detection Events Src Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__nat_ip}) as rule_detections__detection__events__src__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__mac {
    view_label: "Rule Detections: Detection Events Target Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__mac}) as rule_detections__detection__events__target__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__ip {
    view_label: "Rule Detections: Detection Events Observer Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__ip}) as rule_detections__detection__events__observer__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__ip {
    view_label: "Rule Detections: Detection Events Principal Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__ip}) as rule_detections__detection__events__principal__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__mac {
    view_label: "Rule Detections: Detection Events Observer Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__mac}) as rule_detections__detection__events__observer__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__ip {
    view_label: "Rule Detections: Detection Events Src Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__ip}) as rule_detections__detection__events__src__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__nat_ip {
    view_label: "Rule Detections: Detection Events About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.nat_ip}) as rule_detections__detection__events__about__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__mac {
    view_label: "Rule Detections: Detection Events Principal Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__mac}) as rule_detections__detection__events__principal__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__mac {
    view_label: "Rule Detections: Detection Events Src Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__mac}) as rule_detections__detection__events__src__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__nat_ip {
    view_label: "Rule Detections: Detection Events Target Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__nat_ip}) as rule_detections__detection__events__target__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__labels {
    view_label: "Rule Detections: Detection Events Src Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__labels}) as rule_detections__detection__events__src__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__ip {
    view_label: "Rule Detections: Detection Events About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__ip}) as rule_detections__detection__events__about__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__nat_ip {
    view_label: "Rule Detections: Detection Events Observer Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__nat_ip}) as rule_detections__detection__events__observer__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__mac {
    view_label: "Rule Detections: Detection Events About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__mac}) as rule_detections__detection__events__about__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__ip {
    view_label: "Rule Detections: Detection Events Intermediary Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary__ip}) as rule_detections__detection__events__intermediary__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__ip {
    view_label: "Rule Detections: Detection Events Target Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__ip}) as rule_detections__detection__events__target__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__nat_ip {
    view_label: "Rule Detections: Detection Events Principal Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__nat_ip}) as rule_detections__detection__events__principal__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__labels {
    view_label: "Rule Detections: Detection Events About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.labels}) as rule_detections__detection__events__about__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__mac {
    view_label: "Rule Detections: Detection Events Intermediary Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary__mac}) as rule_detections__detection__events__intermediary__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary {
    view_label: "Rule Detections: Detection Events Intermediary"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.intermediary}) as rule_detections__detection__events__intermediary ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__mac {
    view_label: "Rule Detections: Detection Events Target Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__mac}) as rule_detections__detection__events__target__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__email__cc {
    view_label: "Rule Detections: Detection Events Network Email Cc"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__cc}) as rule_detections__detection__events__network__email__cc ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__ip {
    view_label: "Rule Detections: Detection Events Observer Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__ip}) as rule_detections__detection__events__observer__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__labels {
    view_label: "Rule Detections: Detection Events Target Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__labels}) as rule_detections__detection__events__target__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__email__bcc {
    view_label: "Rule Detections: Detection Events Network Email Bcc"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__bcc}) as rule_detections__detection__events__network__email__bcc ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__bool_seq__bool_vals {
    view_label: "Rule Detections: Detection Fields Bool Seq Bool Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.bool_seq__bool_vals}) as rule_detections__detection__fields__bool_seq__bool_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__ip {
    view_label: "Rule Detections: Detection Events Principal Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__ip}) as rule_detections__detection__events__principal__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__mac {
    view_label: "Rule Detections: Detection Events Observer Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__mac}) as rule_detections__detection__events__observer__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__email__to {
    view_label: "Rule Detections: Detection Events Network Email To"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__to}) as rule_detections__detection__events__network__email__to ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__mac {
    view_label: "Rule Detections: Detection Events Principal Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__mac}) as rule_detections__detection__events__principal__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__labels {
    view_label: "Rule Detections: Detection Events Observer Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__labels}) as rule_detections__detection__events__observer__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user__department {
    view_label: "Rule Detections: Detection Events Src User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__department}) as rule_detections__detection__events__src__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__nat_ip {
    view_label: "Rule Detections: Detection Events Intermediary Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.nat_ip}) as rule_detections__detection__events__intermediary__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__bool_seq__bool_vals {
    view_label: "Rule Detections: Detection Outcomes Bool Seq Bool Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.bool_seq__bool_vals}) as rule_detections__detection__outcomes__bool_seq__bool_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__bytes_seq__bytes_vals {
    view_label: "Rule Detections: Detection Fields Bytes Seq Bytes Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.bytes_seq__bytes_vals}) as rule_detections__detection__fields__bytes_seq__bytes_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__int64_seq__int64_vals {
    view_label: "Rule Detections: Detection Fields Int64 Seq Int64 Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.int64_seq__int64_vals}) as rule_detections__detection__fields__int64_seq__int64_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__labels {
    view_label: "Rule Detections: Detection Events Principal Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__labels}) as rule_detections__detection__events__principal__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__labels {
    view_label: "Rule Detections: Detection Events Src Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__labels}) as rule_detections__detection__events__src__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__bytes_list__bytes_vals {
    view_label: "Rule Detections: Detection Fields Bytes List Bytes Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.bytes_list__bytes_vals}) as rule_detections__detection__fields__bytes_list__bytes_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__additional__fields {
    view_label: "Rule Detections: Detection Events Additional Fields"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.additional__fields}) as rule_detections__detection__events__additional__fields ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user__department {
    view_label: "Rule Detections: Detection Events About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__department}) as rule_detections__detection__events__about__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__ip {
    view_label: "Rule Detections: Detection Events Intermediary Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__ip}) as rule_detections__detection__events__intermediary__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__email__subject {
    view_label: "Rule Detections: Detection Events Network Email Subject"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__email__subject}) as rule_detections__detection__events__network__email__subject ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__bytes_seq__bytes_vals {
    view_label: "Rule Detections: Detection Outcomes Bytes Seq Bytes Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.bytes_seq__bytes_vals}) as rule_detections__detection__outcomes__bytes_seq__bytes_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__int64_seq__int64_vals {
    view_label: "Rule Detections: Detection Outcomes Int64 Seq Int64 Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.int64_seq__int64_vals}) as rule_detections__detection__outcomes__int64_seq__int64_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__double_seq__double_vals {
    view_label: "Rule Detections: Detection Fields Double Seq Double Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.double_seq__double_vals}) as rule_detections__detection__fields__double_seq__double_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__string_seq__string_vals {
    view_label: "Rule Detections: Detection Fields String Seq String Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.string_seq__string_vals}) as rule_detections__detection__fields__string_seq__string_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__uint64_seq__uint64_vals {
    view_label: "Rule Detections: Detection Fields Uint64 Seq Uint64 Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.uint64_seq__uint64_vals}) as rule_detections__detection__fields__uint64_seq__uint64_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__hardware {
    view_label: "Rule Detections: Detection Events Src Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__hardware}) as rule_detections__detection__events__src__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Src User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__phone_numbers}) as rule_detections__detection__events__src__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__labels {
    view_label: "Rule Detections: Detection Events About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__labels}) as rule_detections__detection__events__about__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__mac {
    view_label: "Rule Detections: Detection Events Intermediary Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__mac}) as rule_detections__detection__events__intermediary__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__action {
    view_label: "Rule Detections: Detection Events Security Result Action"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.security_result__action}) as rule_detections__detection__events__security_result__action ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user__department {
    view_label: "Rule Detections: Detection Events Target User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__department}) as rule_detections__detection__events__target__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__bytes_list__bytes_vals {
    view_label: "Rule Detections: Detection Outcomes Bytes List Bytes Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.bytes_list__bytes_vals}) as rule_detections__detection__outcomes__bytes_list__bytes_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__fields__string_list__string_vals {
    view_label: "Rule Detections: Detection Fields String List String Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__fields.string_list__string_vals}) as rule_detections__detection__fields__string_list__string_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__software {
    view_label: "Rule Detections: Detection Events Src Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__software}) as rule_detections__detection__events__src__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__labels {
    view_label: "Rule Detections: Detection Events Intermediary Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.labels}) as rule_detections__detection__events__intermediary__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result {
    view_label: "Rule Detections: Detection Events Security Result"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.security_result}) as rule_detections__detection__events__security_result ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__labels {
    view_label: "Rule Detections: Detection Events Target Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__labels}) as rule_detections__detection__events__target__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__dns__answers {
    view_label: "Rule Detections: Detection Events Network Dns Answers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__answers}) as rule_detections__detection__events__network__dns__answers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__double_seq__double_vals {
    view_label: "Rule Detections: Detection Outcomes Double Seq Double Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.double_seq__double_vals}) as rule_detections__detection__outcomes__double_seq__double_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__string_seq__string_vals {
    view_label: "Rule Detections: Detection Outcomes String Seq String Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.string_seq__string_vals}) as rule_detections__detection__outcomes__string_seq__string_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__uint64_seq__uint64_vals {
    view_label: "Rule Detections: Detection Outcomes Uint64 Seq Uint64 Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.uint64_seq__uint64_vals}) as rule_detections__detection__outcomes__uint64_seq__uint64_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user__department {
    view_label: "Rule Detections: Detection Events Observer User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__department}) as rule_detections__detection__events__observer__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user__email_addresses {
    view_label: "Rule Detections: Detection Events Src User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__email_addresses}) as rule_detections__detection__events__src__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__hardware {
    view_label: "Rule Detections: Detection Events About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__hardware}) as rule_detections__detection__events__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__phone_numbers}) as rule_detections__detection__events__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__ip {
    view_label: "Rule Detections: Detection Events Security Result About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__ip}) as rule_detections__detection__events__security_result__about__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__category {
    view_label: "Rule Detections: Detection Events Security Result Category"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.category}) as rule_detections__detection__events__security_result__category ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__outcomes__string_list__string_vals {
    view_label: "Rule Detections: Detection Outcomes String List String Vals"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__outcomes.string_list__string_vals}) as rule_detections__detection__outcomes__string_list__string_vals ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user__department {
    view_label: "Rule Detections: Detection Events Principal User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__department}) as rule_detections__detection__events__principal__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__labels {
    view_label: "Rule Detections: Detection Events Observer Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__labels}) as rule_detections__detection__events__observer__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__auth__mechanism {
    view_label: "Rule Detections: Detection Events Extensions Auth Mechanism"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.extensions__auth__mechanism}) as rule_detections__detection__events__extensions__auth__mechanism ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__process_ancestors {
    view_label: "Rule Detections: Detection Events Src Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__process_ancestors}) as rule_detections__detection__events__src__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__software {
    view_label: "Rule Detections: Detection Events About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__software}) as rule_detections__detection__events__about__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__mac {
    view_label: "Rule Detections: Detection Events Security Result About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__mac}) as rule_detections__detection__events__security_result__about__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__hardware {
    view_label: "Rule Detections: Detection Events Target Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__hardware}) as rule_detections__detection__events__target__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Target User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__phone_numbers}) as rule_detections__detection__events__target__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__dns__authority {
    view_label: "Rule Detections: Detection Events Network Dns Authority"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__authority}) as rule_detections__detection__events__network__dns__authority ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__dhcp__options {
    view_label: "Rule Detections: Detection Events Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dhcp__options}) as rule_detections__detection__events__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__labels {
    view_label: "Rule Detections: Detection Events Principal Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__labels}) as rule_detections__detection__events__principal__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__investigation__comments {
    view_label: "Rule Detections: Detection Events Src Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__investigation__comments}) as rule_detections__detection__events__src__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Src User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__group_identifiers}) as rule_detections__detection__events__src__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__email_addresses}) as rule_detections__detection__events__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__software {
    view_label: "Rule Detections: Detection Events Target Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__software}) as rule_detections__detection__events__target__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__dns__additional {
    view_label: "Rule Detections: Detection Events Network Dns Additional"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__additional}) as rule_detections__detection__events__network__dns__additional ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__dns__questions {
    view_label: "Rule Detections: Detection Events Network Dns Questions"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__dns__questions}) as rule_detections__detection__events__network__dns__questions ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__hardware {
    view_label: "Rule Detections: Detection Events Observer Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__hardware}) as rule_detections__detection__events__observer__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Observer User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__phone_numbers}) as rule_detections__detection__events__observer__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__group__email_addresses {
    view_label: "Rule Detections: Detection Events Src Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__group__email_addresses}) as rule_detections__detection__events__src__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__process_ancestors {
    view_label: "Rule Detections: Detection Events About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.process_ancestors}) as rule_detections__detection__events__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user__email_addresses {
    view_label: "Rule Detections: Detection Events Target User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__email_addresses}) as rule_detections__detection__events__target__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__hardware {
    view_label: "Rule Detections: Detection Events Principal Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__hardware}) as rule_detections__detection__events__principal__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Principal User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__phone_numbers}) as rule_detections__detection__events__principal__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__software {
    view_label: "Rule Detections: Detection Events Observer Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__software}) as rule_detections__detection__events__observer__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__investigation__comments {
    view_label: "Rule Detections: Detection Events About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.investigation__comments}) as rule_detections__detection__events__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__group_identifiers}) as rule_detections__detection__events__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user__department {
    view_label: "Rule Detections: Detection Events Intermediary User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__department}) as rule_detections__detection__events__intermediary__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__nat_ip {
    view_label: "Rule Detections: Detection Events Security Result About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__nat_ip}) as rule_detections__detection__events__security_result__about__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__process_ancestors {
    view_label: "Rule Detections: Detection Events Target Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__process_ancestors}) as rule_detections__detection__events__target__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__software {
    view_label: "Rule Detections: Detection Events Principal Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__software}) as rule_detections__detection__events__principal__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user__email_addresses {
    view_label: "Rule Detections: Detection Events Observer User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__email_addresses}) as rule_detections__detection__events__observer__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__metadata__ingestion_labels {
    view_label: "Rule Detections: Detection Events Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.metadata__ingestion_labels}) as rule_detections__detection__events__metadata__ingestion_labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Src User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user__attribute__labels}) as rule_detections__detection__events__src__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.group__email_addresses}) as rule_detections__detection__events__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__labels {
    view_label: "Rule Detections: Detection Events Intermediary Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__labels}) as rule_detections__detection__events__intermediary__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__investigation__comments {
    view_label: "Rule Detections: Detection Events Target Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__investigation__comments}) as rule_detections__detection__events__target__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Target User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__group_identifiers}) as rule_detections__detection__events__target__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user__email_addresses {
    view_label: "Rule Detections: Detection Events Principal User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__email_addresses}) as rule_detections__detection__events__principal__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__process_ancestors {
    view_label: "Rule Detections: Detection Events Observer Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__process_ancestors}) as rule_detections__detection__events__observer__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__asset__attribute__labels}) as rule_detections__detection__events__src__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__ip {
    view_label: "Rule Detections: Detection Events Security Result About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__ip}) as rule_detections__detection__events__security_result__about__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__group__email_addresses {
    view_label: "Rule Detections: Detection Events Target Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__group__email_addresses}) as rule_detections__detection__events__target__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__process_ancestors {
    view_label: "Rule Detections: Detection Events Principal Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__process_ancestors}) as rule_detections__detection__events__principal__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__investigation__comments {
    view_label: "Rule Detections: Detection Events Observer Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__investigation__comments}) as rule_detections__detection__events__observer__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Observer User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__group_identifiers}) as rule_detections__detection__events__observer__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain {
    view_label: "Rule Detections: Detection Events Src User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__user_management_chain}) as rule_detections__detection__events__src__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user__attribute__labels}) as rule_detections__detection__events__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__hardware {
    view_label: "Rule Detections: Detection Events Intermediary Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__hardware}) as rule_detections__detection__events__intermediary__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Intermediary User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__phone_numbers}) as rule_detections__detection__events__intermediary__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__mac {
    view_label: "Rule Detections: Detection Events Security Result About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__mac}) as rule_detections__detection__events__security_result__about__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__investigation__comments {
    view_label: "Rule Detections: Detection Events Principal Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__investigation__comments}) as rule_detections__detection__events__principal__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Principal User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__group_identifiers}) as rule_detections__detection__events__principal__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__group__email_addresses {
    view_label: "Rule Detections: Detection Events Observer Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__group__email_addresses}) as rule_detections__detection__events__observer__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__group__attribute__labels}) as rule_detections__detection__events__src__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.asset__attribute__labels}) as rule_detections__detection__events__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__software {
    view_label: "Rule Detections: Detection Events Intermediary Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__software}) as rule_detections__detection__events__intermediary__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__labels {
    view_label: "Rule Detections: Detection Events Security Result About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__labels}) as rule_detections__detection__events__security_result__about__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__category_details {
    view_label: "Rule Detections: Detection Events Security Result Category Details"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.category_details}) as rule_detections__detection__events__security_result__category_details ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Target User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user__attribute__labels}) as rule_detections__detection__events__target__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__group__email_addresses {
    view_label: "Rule Detections: Detection Events Principal Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__group__email_addresses}) as rule_detections__detection__events__principal__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__resource__attribute__labels}) as rule_detections__detection__events__src__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain {
    view_label: "Rule Detections: Detection Events About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.user_management_chain}) as rule_detections__detection__events__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__email_addresses}) as rule_detections__detection__events__intermediary__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__asset__attribute__labels}) as rule_detections__detection__events__target__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user__attribute__labels}) as rule_detections__detection__events__observer__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__cloud__vpc__attribute__labels}) as rule_detections__detection__events__src__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.group__attribute__labels}) as rule_detections__detection__events__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__process_ancestors {
    view_label: "Rule Detections: Detection Events Intermediary Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.process_ancestors}) as rule_detections__detection__events__intermediary__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain {
    view_label: "Rule Detections: Detection Events Target User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__user_management_chain}) as rule_detections__detection__events__target__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user__attribute__labels}) as rule_detections__detection__events__principal__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__asset__attribute__labels}) as rule_detections__detection__events__observer__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.resource__attribute__labels}) as rule_detections__detection__events__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__investigation__comments {
    view_label: "Rule Detections: Detection Events Intermediary Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.investigation__comments}) as rule_detections__detection__events__intermediary__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Intermediary User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__group_identifiers}) as rule_detections__detection__events__intermediary__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__group__attribute__labels}) as rule_detections__detection__events__target__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__asset__attribute__labels}) as rule_detections__detection__events__principal__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain {
    view_label: "Rule Detections: Detection Events Observer User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__user_management_chain}) as rule_detections__detection__events__observer__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Src User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.department}) as rule_detections__detection__events__src__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.cloud__vpc__attribute__labels}) as rule_detections__detection__events__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__group__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.group__email_addresses}) as rule_detections__detection__events__intermediary__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__detection_fields {
    view_label: "Rule Detections: Detection Events Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.detection_fields}) as rule_detections__detection__events__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__resource__attribute__labels}) as rule_detections__detection__events__target__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__network__tls__client__supported_ciphers {
    view_label: "Rule Detections: Detection Events Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.network__tls__client__supported_ciphers}) as rule_detections__detection__events__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain {
    view_label: "Rule Detections: Detection Events Principal User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__user_management_chain}) as rule_detections__detection__events__principal__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__group__attribute__labels}) as rule_detections__detection__events__observer__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.extensions__vulns__vulnerabilities}) as rule_detections__detection__events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user__department {
    view_label: "Rule Detections: Detection Events Security Result About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__department}) as rule_detections__detection__events__security_result__about__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__cloud__vpc__attribute__labels}) as rule_detections__detection__events__target__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__group__attribute__labels}) as rule_detections__detection__events__principal__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__resource__attribute__labels}) as rule_detections__detection__events__observer__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Src Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.src__cloud__project__attribute__labels}) as rule_detections__detection__events__src__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.department}) as rule_detections__detection__events__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user__attribute__labels}) as rule_detections__detection__events__intermediary__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__labels {
    view_label: "Rule Detections: Detection Events Security Result About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__labels}) as rule_detections__detection__events__security_result__about__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__resource__attribute__labels}) as rule_detections__detection__events__principal__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__cloud__vpc__attribute__labels}) as rule_detections__detection__events__observer__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Src User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.phone_numbers}) as rule_detections__detection__events__src__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.asset__attribute__labels}) as rule_detections__detection__events__intermediary__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Target User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.department}) as rule_detections__detection__events__target__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__cloud__vpc__attribute__labels}) as rule_detections__detection__events__principal__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about.cloud__project__attribute__labels}) as rule_detections__detection__events__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.user_management_chain}) as rule_detections__detection__events__intermediary__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__hardware {
    view_label: "Rule Detections: Detection Events Security Result About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__hardware}) as rule_detections__detection__events__security_result__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Security Result About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__phone_numbers}) as rule_detections__detection__events__security_result__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.department}) as rule_detections__detection__events__observer__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Src User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.email_addresses}) as rule_detections__detection__events__src__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.group__attribute__labels}) as rule_detections__detection__events__intermediary__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__software {
    view_label: "Rule Detections: Detection Events Security Result About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__software}) as rule_detections__detection__events__security_result__about__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Target Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.target__cloud__project__attribute__labels}) as rule_detections__detection__events__target__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.department}) as rule_detections__detection__events__principal__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__mac {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__mac}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.resource__attribute__labels}) as rule_detections__detection__events__intermediary__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__email_addresses}) as rule_detections__detection__events__security_result__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Target User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.phone_numbers}) as rule_detections__detection__events__target__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.observer__cloud__project__attribute__labels}) as rule_detections__detection__events__observer__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Src User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.group_identifiers}) as rule_detections__detection__events__src__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.email_addresses}) as rule_detections__detection__events__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.cloud__vpc__attribute__labels}) as rule_detections__detection__events__intermediary__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__process_ancestors {
    view_label: "Rule Detections: Detection Events Security Result About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__process_ancestors}) as rule_detections__detection__events__security_result__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events.principal__cloud__project__attribute__labels}) as rule_detections__detection__events__principal__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.phone_numbers}) as rule_detections__detection__events__observer__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__investigation__comments {
    view_label: "Rule Detections: Detection Events Security Result About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__investigation__comments}) as rule_detections__detection__events__security_result__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Security Result About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__group_identifiers}) as rule_detections__detection__events__security_result__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Target User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.email_addresses}) as rule_detections__detection__events__target__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.phone_numbers}) as rule_detections__detection__events__principal__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__nat_ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Nat Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__nat_ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__nat_ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.department}) as rule_detections__detection__events__intermediary__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__group__email_addresses}) as rule_detections__detection__events__security_result__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.email_addresses}) as rule_detections__detection__events__observer__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__src__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Src User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__src__user_management_chain.attribute__labels}) as rule_detections__detection__events__src__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Target User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.group_identifiers}) as rule_detections__detection__events__target__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.email_addresses}) as rule_detections__detection__events__principal__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__ip {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Ip"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__ip}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__ip ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary.cloud__project__attribute__labels}) as rule_detections__detection__events__intermediary__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user__attribute__labels}) as rule_detections__detection__events__security_result__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.group_identifiers}) as rule_detections__detection__events__observer__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__mac {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Mac"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__mac}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__mac ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.phone_numbers}) as rule_detections__detection__events__intermediary__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__asset__attribute__labels}) as rule_detections__detection__events__security_result__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.group_identifiers}) as rule_detections__detection__events__principal__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__user_management_chain}) as rule_detections__detection__events__security_result__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__target__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Target User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__target__user_management_chain.attribute__labels}) as rule_detections__detection__events__target__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.email_addresses}) as rule_detections__detection__events__intermediary__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__group__attribute__labels}) as rule_detections__detection__events__security_result__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__observer__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Observer User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__observer__user_management_chain.attribute__labels}) as rule_detections__detection__events__observer__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__resource__attribute__labels}) as rule_detections__detection__events__security_result__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__principal__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Principal User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__principal__user_management_chain.attribute__labels}) as rule_detections__detection__events__principal__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.group_identifiers}) as rule_detections__detection__events__intermediary__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__cloud__vpc__attribute__labels}) as rule_detections__detection__events__security_result__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__department {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__department}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.department}) as rule_detections__detection__events__security_result__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__intermediary__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Intermediary User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__intermediary__user_management_chain.attribute__labels}) as rule_detections__detection__events__intermediary__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result.about__cloud__project__attribute__labels}) as rule_detections__detection__events__security_result__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__hardware {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Hardware"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__hardware}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__phone_numbers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__security_result__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__software {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Software"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__software}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__software ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.email_addresses}) as rule_detections__detection__events__security_result__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__process_ancestors {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Process Ancestors"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__process_ancestors}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__investigation__comments {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Investigation Comments"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__investigation__comments}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__group_identifiers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__security_result__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__group__email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__security_result__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Security Result About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__security_result__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__security_result__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__asset__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__user_management_chain}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__group__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__resource__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.department}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.phone_numbers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.email_addresses}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.group_identifiers}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
    view_label: "Rule Detections: Detection Events Extensions Vulns Vulnerabilities About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__labels}) as rule_detections__detection__events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
}

explore: udm_enum_value_to_name_mapping {}

explore: rulesets {}

explore: entity_graph {
  join: entity_graph__relations {
    view_label: "Entity Graph: Relations"
    sql: LEFT JOIN UNNEST(${entity_graph.relations}) as entity_graph__relations ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip {
    view_label: "Entity Graph: Entity Ip"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__ip}) as entity_graph__entity__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__mac {
    view_label: "Entity Graph: Entity Mac"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__mac}) as entity_graph__entity__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__nat_ip {
    view_label: "Entity Graph: Entity Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__nat_ip}) as entity_graph__entity__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__ip {
    view_label: "Entity Graph: Entity Asset Ip"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__ip}) as entity_graph__entity__asset__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__tags {
    view_label: "Entity Graph: Entity File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__tags}) as entity_graph__entity__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__mac {
    view_label: "Entity Graph: Entity Asset Mac"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__mac}) as entity_graph__entity__asset__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__metric__dimensions {
    view_label: "Entity Graph: Metric Dimensions"
    sql: LEFT JOIN UNNEST(${entity_graph.metric__dimensions}) as entity_graph__metric__dimensions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__names {
    view_label: "Entity Graph: Entity File Names"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__names}) as entity_graph__entity__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__labels {
    view_label: "Entity Graph: Entity Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__labels}) as entity_graph__entity__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip {
    view_label: "Entity Graph: Relations Entity Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__ip}) as entity_graph__relations__entity__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__nat_ip {
    view_label: "Entity Graph: Entity Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__nat_ip}) as entity_graph__entity__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__mac {
    view_label: "Entity Graph: Relations Entity Mac"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__mac}) as entity_graph__relations__entity__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__additional__fields {
    view_label: "Entity Graph: Additional Fields"
    sql: LEFT JOIN UNNEST(${entity_graph.additional__fields}) as entity_graph__additional__fields ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__action {
    view_label: "Entity Graph: Metadata Threat Action"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__threat__action}) as entity_graph__metadata__threat__action ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__department {
    view_label: "Entity Graph: Entity User Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__department}) as entity_graph__entity__user__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat {
    view_label: "Entity Graph: Metadata Threat"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__threat}) as entity_graph__metadata__threat ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__nat_ip {
    view_label: "Entity Graph: Relations Entity Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__nat_ip}) as entity_graph__relations__entity__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__email__cc {
    view_label: "Entity Graph: Entity Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__email__cc}) as entity_graph__entity__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_location {
    view_label: "Entity Graph: Entity Ip Location"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__ip_location}) as entity_graph__entity__ip_location ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__labels {
    view_label: "Entity Graph: Entity Asset Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__labels}) as entity_graph__entity__asset__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip {
    view_label: "Entity Graph: Metadata Threat About Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__ip}) as entity_graph__metadata__threat__about__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__category {
    view_label: "Entity Graph: Metadata Threat Category"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.category}) as entity_graph__metadata__threat__category ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__email__bcc {
    view_label: "Entity Graph: Entity Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__email__bcc}) as entity_graph__entity__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__embedded_ips {
    view_label: "Entity Graph: Entity File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__embedded_ips}) as entity_graph__entity__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__tags {
    view_label: "Entity Graph: Entity Process File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__tags}) as entity_graph__entity__process__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__mac {
    view_label: "Entity Graph: Metadata Threat About Mac"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__mac}) as entity_graph__metadata__threat__about__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__campaigns {
    view_label: "Entity Graph: Metadata Threat Campaigns"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.campaigns}) as entity_graph__metadata__threat__campaigns ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__ip {
    view_label: "Entity Graph: Relations Entity Asset Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__ip}) as entity_graph__relations__entity__asset__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact {
    view_label: "Entity Graph: Entity Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__ip_geo_artifact}) as entity_graph__entity__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__email__to {
    view_label: "Entity Graph: Entity Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__email__to}) as entity_graph__entity__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__embedded_urls {
    view_label: "Entity Graph: Entity File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__embedded_urls}) as entity_graph__entity__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__names {
    view_label: "Entity Graph: Entity Process File Names"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__names}) as entity_graph__entity__process__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__name_server {
    view_label: "Entity Graph: Entity Domain Name Server"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__name_server}) as entity_graph__entity__domain__name_server ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__hardware {
    view_label: "Entity Graph: Entity Asset Hardware"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__hardware}) as entity_graph__entity__asset__hardware ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__phone_numbers {
    view_label: "Entity Graph: Entity User Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__phone_numbers}) as entity_graph__entity__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__source_labels {
    view_label: "Entity Graph: Metadata Source Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__source_labels}) as entity_graph__metadata__source_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__tags {
    view_label: "Entity Graph: Relations Entity File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__tags}) as entity_graph__relations__entity__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__mac {
    view_label: "Entity Graph: Relations Entity Asset Mac"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__mac}) as entity_graph__relations__entity__asset__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__software {
    view_label: "Entity Graph: Entity Asset Software"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__software}) as entity_graph__entity__asset__software ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__names {
    view_label: "Entity Graph: Relations Entity File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__names}) as entity_graph__relations__entity__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__labels {
    view_label: "Entity Graph: Relations Entity Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__labels}) as entity_graph__relations__entity__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__smtp__rcpt_to {
    view_label: "Entity Graph: Entity Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__smtp__rcpt_to}) as entity_graph__entity__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__email_addresses {
    view_label: "Entity Graph: Entity User Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__email_addresses}) as entity_graph__entity__user__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__nat_ip {
    view_label: "Entity Graph: Metadata Threat About Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__nat_ip}) as entity_graph__metadata__threat__about__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__outcomes {
    view_label: "Entity Graph: Metadata Threat Outcomes"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.outcomes}) as entity_graph__metadata__threat__outcomes ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__email__subject {
    view_label: "Entity Graph: Entity Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__email__subject}) as entity_graph__entity__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__embedded_domains {
    view_label: "Entity Graph: Entity File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__embedded_domains}) as entity_graph__entity__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource_ancestors {
    view_label: "Entity Graph: Entity Resource Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__resource_ancestors}) as entity_graph__entity__resource_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors {
    view_label: "Entity Graph: Entity Process Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process_ancestors}) as entity_graph__entity__process_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__nat_ip {
    view_label: "Entity Graph: Relations Entity Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__nat_ip}) as entity_graph__relations__entity__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__capabilities_tags {
    view_label: "Entity Graph: Entity File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__capabilities_tags}) as entity_graph__entity__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__action {
    view_label: "Entity Graph: Entity Security Result Action"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__security_result__action}) as entity_graph__entity__security_result__action ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__department {
    view_label: "Entity Graph: Entity Domain Tech Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__department}) as entity_graph__entity__domain__tech__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__department {
    view_label: "Entity Graph: Entity Domain Zone Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__department}) as entity_graph__entity__domain__zone__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__investigation__comments {
    view_label: "Entity Graph: Entity Investigation Comments"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__investigation__comments}) as entity_graph__entity__investigation__comments ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__group_identifiers {
    view_label: "Entity Graph: Entity User Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__group_identifiers}) as entity_graph__entity__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__ip {
    view_label: "Entity Graph: Metadata Threat About Asset Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__ip}) as entity_graph__metadata__threat__about__asset__ip ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__dns__answers {
    view_label: "Entity Graph: Entity Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__dns__answers}) as entity_graph__entity__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__group__email_addresses {
    view_label: "Entity Graph: Entity Group Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__group__email_addresses}) as entity_graph__entity__group__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result {
    view_label: "Entity Graph: Entity Security Result"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__security_result}) as entity_graph__entity__security_result ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__department {
    view_label: "Entity Graph: Entity Domain Admin Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__department}) as entity_graph__entity__domain__admin__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__associations {
    view_label: "Entity Graph: Metadata Threat Associations"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.associations}) as entity_graph__metadata__threat__associations ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__tags {
    view_label: "Entity Graph: Metadata Threat About File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__tags}) as entity_graph__metadata__threat__about__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__mac {
    view_label: "Entity Graph: Metadata Threat About Asset Mac"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__mac}) as entity_graph__metadata__threat__about__asset__mac ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__rule_labels {
    view_label: "Entity Graph: Metadata Threat Rule Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.rule_labels}) as entity_graph__metadata__threat__rule_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__category {
    view_label: "Entity Graph: Entity Security Result Category"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.category}) as entity_graph__entity__security_result__category ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__names {
    view_label: "Entity Graph: Metadata Threat About File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__names}) as entity_graph__metadata__threat__about__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__labels {
    view_label: "Entity Graph: Metadata Threat About Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__labels}) as entity_graph__metadata__threat__about__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__category_details {
    view_label: "Entity Graph: Metadata Threat Category Details"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.category_details}) as entity_graph__metadata__threat__category_details ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__department {
    view_label: "Entity Graph: Relations Entity User Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__department}) as entity_graph__relations__entity__user__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__dns__authority {
    view_label: "Entity Graph: Entity Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__dns__authority}) as entity_graph__entity__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__dhcp__options {
    view_label: "Entity Graph: Entity Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__dhcp__options}) as entity_graph__entity__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__email__cc {
    view_label: "Entity Graph: Entity Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__email__cc}) as entity_graph__entity__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__section {
    view_label: "Entity Graph: Entity File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__section}) as entity_graph__entity__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__embedded_ips {
    view_label: "Entity Graph: Entity Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__embedded_ips}) as entity_graph__entity__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__campaigns {
    view_label: "Entity Graph: Entity Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.campaigns}) as entity_graph__entity__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__phone_numbers {
    view_label: "Entity Graph: Entity Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__phone_numbers}) as entity_graph__entity__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__department {
    view_label: "Entity Graph: Entity Domain Billing Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__department}) as entity_graph__entity__domain__billing__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__phone_numbers {
    view_label: "Entity Graph: Entity Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__phone_numbers}) as entity_graph__entity__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__time_off {
    view_label: "Entity Graph: Entity User Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__time_off}) as entity_graph__entity__user__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__attribute__roles {
    view_label: "Entity Graph: Entity User Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__attribute__roles}) as entity_graph__entity__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__attribute__labels {
    view_label: "Entity Graph: Entity User Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__attribute__labels}) as entity_graph__entity__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__email__cc {
    view_label: "Entity Graph: Relations Entity Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__email__cc}) as entity_graph__relations__entity__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_location {
    view_label: "Entity Graph: Relations Entity Ip Location"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__ip_location}) as entity_graph__relations__entity__ip_location ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__labels {
    view_label: "Entity Graph: Relations Entity Asset Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__labels}) as entity_graph__relations__entity__asset__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__dns__additional {
    view_label: "Entity Graph: Entity Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__dns__additional}) as entity_graph__entity__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__dns__questions {
    view_label: "Entity Graph: Entity Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__dns__questions}) as entity_graph__entity__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__email__bcc {
    view_label: "Entity Graph: Entity Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__email__bcc}) as entity_graph__entity__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__embedded_urls {
    view_label: "Entity Graph: Entity Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__embedded_urls}) as entity_graph__entity__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__phone_numbers {
    view_label: "Entity Graph: Entity Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__phone_numbers}) as entity_graph__entity__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__vulnerabilities {
    view_label: "Entity Graph: Entity Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__vulnerabilities}) as entity_graph__entity__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__attribute__roles {
    view_label: "Entity Graph: Entity Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__attribute__roles}) as entity_graph__entity__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__attribute__labels {
    view_label: "Entity Graph: Entity Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__attribute__labels}) as entity_graph__entity__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__nat_ip {
    view_label: "Entity Graph: Metadata Threat About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__nat_ip}) as entity_graph__metadata__threat__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__email__bcc {
    view_label: "Entity Graph: Relations Entity Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__email__bcc}) as entity_graph__relations__entity__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__embedded_ips {
    view_label: "Entity Graph: Relations Entity File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__embedded_ips}) as entity_graph__relations__entity__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__tags {
    view_label: "Entity Graph: Relations Entity Process File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__tags}) as entity_graph__relations__entity__process__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__email__to {
    view_label: "Entity Graph: Entity Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__email__to}) as entity_graph__entity__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain {
    view_label: "Entity Graph: Entity User Management Chain"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user_management_chain}) as entity_graph__entity__user_management_chain ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__tags {
    view_label: "Entity Graph: Entity Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__tags}) as entity_graph__entity__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__email_addresses {
    view_label: "Entity Graph: Entity Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__email_addresses}) as entity_graph__entity__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__email_addresses {
    view_label: "Entity Graph: Entity Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__email_addresses}) as entity_graph__entity__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__ip_geo_artifact}) as entity_graph__relations__entity__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__email__to {
    view_label: "Entity Graph: Relations Entity Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__email__to}) as entity_graph__relations__entity__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__embedded_urls {
    view_label: "Entity Graph: Relations Entity File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__embedded_urls}) as entity_graph__relations__entity__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__names {
    view_label: "Entity Graph: Relations Entity Process File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__names}) as entity_graph__relations__entity__process__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__name_server {
    view_label: "Entity Graph: Relations Entity Domain Name Server"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__name_server}) as entity_graph__relations__entity__domain__name_server ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__hardware {
    view_label: "Entity Graph: Relations Entity Asset Hardware"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__hardware}) as entity_graph__relations__entity__asset__hardware ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__phone_numbers {
    view_label: "Entity Graph: Relations Entity User Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__phone_numbers}) as entity_graph__relations__entity__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__smtp__server_response {
    view_label: "Entity Graph: Entity Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__smtp__server_response}) as entity_graph__entity__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__imports {
    view_label: "Entity Graph: Entity File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__imports}) as entity_graph__entity__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__group__attribute__roles {
    view_label: "Entity Graph: Entity Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__group__attribute__roles}) as entity_graph__entity__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__group__attribute__labels {
    view_label: "Entity Graph: Entity Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__group__attribute__labels}) as entity_graph__entity__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__command_line_history {
    view_label: "Entity Graph: Entity Process Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__command_line_history}) as entity_graph__entity__process__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__outcomes {
    view_label: "Entity Graph: Entity Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.outcomes}) as entity_graph__entity__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__names {
    view_label: "Entity Graph: Entity Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__names}) as entity_graph__entity__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__email_addresses {
    view_label: "Entity Graph: Entity Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__email_addresses}) as entity_graph__entity__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__phone_numbers {
    view_label: "Entity Graph: Entity Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__phone_numbers}) as entity_graph__entity__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__department {
    view_label: "Entity Graph: Entity Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__department}) as entity_graph__entity__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__detection_fields {
    view_label: "Entity Graph: Metadata Threat Detection Fields"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.detection_fields}) as entity_graph__metadata__threat__detection_fields ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__software {
    view_label: "Entity Graph: Relations Entity Asset Software"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__software}) as entity_graph__relations__entity__asset__software ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Entity Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__smtp__rcpt_to}) as entity_graph__entity__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__resource {
    view_label: "Entity Graph: Entity File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__resource}) as entity_graph__entity__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__embedded_domains {
    view_label: "Entity Graph: Entity Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__embedded_domains}) as entity_graph__entity__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource__attribute__roles {
    view_label: "Entity Graph: Entity Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__resource__attribute__roles}) as entity_graph__entity__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource__attribute__labels {
    view_label: "Entity Graph: Entity Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__resource__attribute__labels}) as entity_graph__entity__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__group_identifiers {
    view_label: "Entity Graph: Entity Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__group_identifiers}) as entity_graph__entity__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__group_identifiers {
    view_label: "Entity Graph: Entity Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__group_identifiers}) as entity_graph__entity__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__department {
    view_label: "Entity Graph: Metadata Threat About User Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__department}) as entity_graph__metadata__threat__about__user__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__smtp__rcpt_to {
    view_label: "Entity Graph: Relations Entity Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__smtp__rcpt_to}) as entity_graph__relations__entity__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__email_addresses {
    view_label: "Entity Graph: Relations Entity User Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__email_addresses}) as entity_graph__relations__entity__user__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__email__subject {
    view_label: "Entity Graph: Entity Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__email__subject}) as entity_graph__entity__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__vpc__attribute__roles {
    view_label: "Entity Graph: Entity Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__vpc__attribute__roles}) as entity_graph__entity__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__vpc__attribute__labels {
    view_label: "Entity Graph: Entity Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__vpc__attribute__labels}) as entity_graph__entity__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__imports__functions {
    view_label: "Entity Graph: Entity File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__file__pe_file__imports.functions}) as entity_graph__entity__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__capabilities_tags {
    view_label: "Entity Graph: Entity Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__capabilities_tags}) as entity_graph__entity__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__group_identifiers {
    view_label: "Entity Graph: Entity Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__group_identifiers}) as entity_graph__entity__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__email_addresses {
    view_label: "Entity Graph: Entity Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__email_addresses}) as entity_graph__entity__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__tags__tenant_id {
    view_label: "Entity Graph: Metadata Event Metadata Tags Tenant Id"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__tags__tenant_id}) as entity_graph__metadata__event_metadata__tags__tenant_id ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__email__cc {
    view_label: "Entity Graph: Metadata Threat About Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__email__cc}) as entity_graph__metadata__threat__about__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_location {
    view_label: "Entity Graph: Metadata Threat About Ip Location"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__ip_location}) as entity_graph__metadata__threat__about__ip_location ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__labels {
    view_label: "Entity Graph: Metadata Threat About Asset Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__labels}) as entity_graph__metadata__threat__about__asset__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__email__subject {
    view_label: "Entity Graph: Relations Entity Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__email__subject}) as entity_graph__relations__entity__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__embedded_domains {
    view_label: "Entity Graph: Relations Entity File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__embedded_domains}) as entity_graph__relations__entity__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource_ancestors {
    view_label: "Entity Graph: Relations Entity Resource Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__resource_ancestors}) as entity_graph__relations__entity__resource_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors {
    view_label: "Entity Graph: Relations Entity Process Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process_ancestors}) as entity_graph__relations__entity__process_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__associations {
    view_label: "Entity Graph: Entity Security Result Associations"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.associations}) as entity_graph__entity__security_result__associations ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__rule_labels {
    view_label: "Entity Graph: Entity Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.rule_labels}) as entity_graph__entity__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__phone_numbers {
    view_label: "Entity Graph: Entity Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__phone_numbers}) as entity_graph__entity__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__software__permissions {
    view_label: "Entity Graph: Entity Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__asset__software.permissions}) as entity_graph__entity__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user__attribute__permissions {
    view_label: "Entity Graph: Entity User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__user__attribute__permissions}) as entity_graph__entity__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__associations__alias {
    view_label: "Entity Graph: Metadata Threat Associations Alias"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__associations.alias}) as entity_graph__metadata__threat__associations__alias ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__email__bcc {
    view_label: "Entity Graph: Metadata Threat About Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__email__bcc}) as entity_graph__metadata__threat__about__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__embedded_ips {
    view_label: "Entity Graph: Metadata Threat About File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__embedded_ips}) as entity_graph__metadata__threat__about__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__tags {
    view_label: "Entity Graph: Metadata Threat About Process File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__tags}) as entity_graph__metadata__threat__about__process__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__capabilities_tags {
    view_label: "Entity Graph: Relations Entity File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__capabilities_tags}) as entity_graph__relations__entity__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__action {
    view_label: "Entity Graph: Relations Entity Security Result Action"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__security_result__action}) as entity_graph__relations__entity__security_result__action ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__department {
    view_label: "Entity Graph: Relations Entity Domain Tech Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__department}) as entity_graph__relations__entity__domain__tech__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__department {
    view_label: "Entity Graph: Relations Entity Domain Zone Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__department}) as entity_graph__relations__entity__domain__zone__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__investigation__comments {
    view_label: "Entity Graph: Relations Entity Investigation Comments"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__investigation__comments}) as entity_graph__relations__entity__investigation__comments ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__group_identifiers {
    view_label: "Entity Graph: Relations Entity User Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__group_identifiers}) as entity_graph__relations__entity__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__email__cc {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__email__cc}) as entity_graph__entity__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__dns__answers {
    view_label: "Entity Graph: Entity Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__dns__answers}) as entity_graph__entity__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__department {
    view_label: "Entity Graph: Entity User Management Chain Department"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.department}) as entity_graph__entity__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__category_details {
    view_label: "Entity Graph: Entity Security Result Category Details"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.category_details}) as entity_graph__entity__security_result__category_details ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__time_off {
    view_label: "Entity Graph: Entity Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__time_off}) as entity_graph__entity__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__attribute__roles {
    view_label: "Entity Graph: Entity Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__attribute__roles}) as entity_graph__entity__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__attribute__labels {
    view_label: "Entity Graph: Entity Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__attribute__labels}) as entity_graph__entity__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__group_identifiers {
    view_label: "Entity Graph: Entity Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__group_identifiers}) as entity_graph__entity__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__time_off {
    view_label: "Entity Graph: Entity Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__time_off}) as entity_graph__entity__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__attribute__roles {
    view_label: "Entity Graph: Entity Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__attribute__roles}) as entity_graph__entity__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__attribute__labels {
    view_label: "Entity Graph: Entity Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__attribute__labels}) as entity_graph__entity__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__asset__attribute__permissions {
    view_label: "Entity Graph: Entity Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__asset__attribute__permissions}) as entity_graph__entity__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__ip_geo_artifact}) as entity_graph__metadata__threat__about__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__email__to {
    view_label: "Entity Graph: Metadata Threat About Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__email__to}) as entity_graph__metadata__threat__about__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__embedded_urls {
    view_label: "Entity Graph: Metadata Threat About File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__embedded_urls}) as entity_graph__metadata__threat__about__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__names {
    view_label: "Entity Graph: Metadata Threat About Process File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__names}) as entity_graph__metadata__threat__about__process__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__name_server {
    view_label: "Entity Graph: Metadata Threat About Domain Name Server"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__name_server}) as entity_graph__metadata__threat__about__domain__name_server ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__hardware {
    view_label: "Entity Graph: Metadata Threat About Asset Hardware"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__hardware}) as entity_graph__metadata__threat__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__phone_numbers}) as entity_graph__metadata__threat__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__dns__answers {
    view_label: "Entity Graph: Relations Entity Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__dns__answers}) as entity_graph__relations__entity__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__group__email_addresses {
    view_label: "Entity Graph: Relations Entity Group Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__group__email_addresses}) as entity_graph__relations__entity__group__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result {
    view_label: "Entity Graph: Relations Entity Security Result"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__security_result}) as entity_graph__relations__entity__security_result ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__department {
    view_label: "Entity Graph: Relations Entity Domain Admin Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__department}) as entity_graph__relations__entity__domain__admin__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__email__bcc {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__email__bcc}) as entity_graph__entity__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__section {
    view_label: "Entity Graph: Entity Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__section}) as entity_graph__entity__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__time_off {
    view_label: "Entity Graph: Entity Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__time_off}) as entity_graph__entity__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__attribute__roles {
    view_label: "Entity Graph: Entity Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__attribute__roles}) as entity_graph__entity__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__attribute__labels {
    view_label: "Entity Graph: Entity Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__attribute__labels}) as entity_graph__entity__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__email_addresses {
    view_label: "Entity Graph: Entity Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__email_addresses}) as entity_graph__entity__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__associations__country_code {
    view_label: "Entity Graph: Metadata Threat Associations Country Code"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__associations.country_code}) as entity_graph__metadata__threat__associations__country_code ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__software {
    view_label: "Entity Graph: Metadata Threat About Asset Software"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__software}) as entity_graph__metadata__threat__about__asset__software ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__attack_details__tactics {
    view_label: "Entity Graph: Metadata Threat Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.attack_details__tactics}) as entity_graph__metadata__threat__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__category {
    view_label: "Entity Graph: Relations Entity Security Result Category"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.category}) as entity_graph__relations__entity__security_result__category ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__email__to {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__email__to}) as entity_graph__entity__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__dns__authority {
    view_label: "Entity Graph: Entity Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__dns__authority}) as entity_graph__entity__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__dhcp__options {
    view_label: "Entity Graph: Entity Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__dhcp__options}) as entity_graph__entity__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__project__attribute__roles {
    view_label: "Entity Graph: Entity Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__project__attribute__roles}) as entity_graph__entity__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__project__attribute__labels {
    view_label: "Entity Graph: Entity Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__project__attribute__labels}) as entity_graph__entity__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Entity File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__signature_info__signer}) as entity_graph__entity__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__group__attribute__permissions {
    view_label: "Entity Graph: Entity Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__group__attribute__permissions}) as entity_graph__entity__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__smtp__rcpt_to {
    view_label: "Entity Graph: Metadata Threat About Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__smtp__rcpt_to}) as entity_graph__metadata__threat__about__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__email_addresses {
    view_label: "Entity Graph: Metadata Threat About User Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__email_addresses}) as entity_graph__metadata__threat__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__dns__authority {
    view_label: "Entity Graph: Relations Entity Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__dns__authority}) as entity_graph__relations__entity__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__dhcp__options {
    view_label: "Entity Graph: Relations Entity Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__dhcp__options}) as entity_graph__relations__entity__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__email__cc {
    view_label: "Entity Graph: Relations Entity Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__email__cc}) as entity_graph__relations__entity__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__section {
    view_label: "Entity Graph: Relations Entity File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__section}) as entity_graph__relations__entity__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__embedded_ips {
    view_label: "Entity Graph: Relations Entity Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__embedded_ips}) as entity_graph__relations__entity__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__campaigns {
    view_label: "Entity Graph: Relations Entity Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.campaigns}) as entity_graph__relations__entity__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__phone_numbers {
    view_label: "Entity Graph: Relations Entity Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__phone_numbers}) as entity_graph__relations__entity__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__department {
    view_label: "Entity Graph: Relations Entity Domain Billing Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__department}) as entity_graph__relations__entity__domain__billing__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__phone_numbers {
    view_label: "Entity Graph: Relations Entity Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__phone_numbers}) as entity_graph__relations__entity__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__time_off {
    view_label: "Entity Graph: Relations Entity User Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__time_off}) as entity_graph__relations__entity__user__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__attribute__roles {
    view_label: "Entity Graph: Relations Entity User Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__attribute__roles}) as entity_graph__relations__entity__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__attribute__labels {
    view_label: "Entity Graph: Relations Entity User Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__attribute__labels}) as entity_graph__relations__entity__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__dns__additional {
    view_label: "Entity Graph: Entity Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__dns__additional}) as entity_graph__entity__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__dns__questions {
    view_label: "Entity Graph: Entity Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__dns__questions}) as entity_graph__entity__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Entity File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__signature_info__sigcheck__signer}) as entity_graph__entity__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource__attribute__permissions {
    view_label: "Entity Graph: Entity Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__resource__attribute__permissions}) as entity_graph__entity__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__phone_numbers {
    view_label: "Entity Graph: Entity User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.phone_numbers}) as entity_graph__entity__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__embedded_ips {
    view_label: "Entity Graph: Entity Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__embedded_ips}) as entity_graph__entity__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__time_off {
    view_label: "Entity Graph: Entity Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__time_off}) as entity_graph__entity__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__attribute__roles {
    view_label: "Entity Graph: Entity Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__attribute__roles}) as entity_graph__entity__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__attribute__labels {
    view_label: "Entity Graph: Entity Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__attribute__labels}) as entity_graph__entity__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__group_identifiers {
    view_label: "Entity Graph: Entity Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__group_identifiers}) as entity_graph__entity__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__email__subject {
    view_label: "Entity Graph: Metadata Threat About Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__email__subject}) as entity_graph__metadata__threat__about__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__embedded_domains {
    view_label: "Entity Graph: Metadata Threat About File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__embedded_domains}) as entity_graph__metadata__threat__about__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource_ancestors {
    view_label: "Entity Graph: Metadata Threat About Resource Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__resource_ancestors}) as entity_graph__metadata__threat__about__resource_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process_ancestors}) as entity_graph__metadata__threat__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__dns__additional {
    view_label: "Entity Graph: Relations Entity Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__dns__additional}) as entity_graph__relations__entity__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__dns__questions {
    view_label: "Entity Graph: Relations Entity Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__dns__questions}) as entity_graph__relations__entity__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__email__bcc {
    view_label: "Entity Graph: Relations Entity Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__email__bcc}) as entity_graph__relations__entity__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__embedded_urls {
    view_label: "Entity Graph: Relations Entity Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__embedded_urls}) as entity_graph__relations__entity__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__phone_numbers {
    view_label: "Entity Graph: Relations Entity Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__phone_numbers}) as entity_graph__relations__entity__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__vulnerabilities {
    view_label: "Entity Graph: Relations Entity Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__vulnerabilities}) as entity_graph__relations__entity__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__attribute__roles {
    view_label: "Entity Graph: Relations Entity Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__attribute__roles}) as entity_graph__relations__entity__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__attribute__labels {
    view_label: "Entity Graph: Relations Entity Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__attribute__labels}) as entity_graph__relations__entity__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__smtp__rcpt_to}) as entity_graph__entity__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Entity Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__tls__client__supported_ciphers}) as entity_graph__entity__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__vpc__attribute__permissions {
    view_label: "Entity Graph: Entity Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__vpc__attribute__permissions}) as entity_graph__entity__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__imports {
    view_label: "Entity Graph: Entity Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__imports}) as entity_graph__entity__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__detection_fields {
    view_label: "Entity Graph: Entity Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.detection_fields}) as entity_graph__entity__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__embedded_urls {
    view_label: "Entity Graph: Entity Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__embedded_urls}) as entity_graph__entity__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__ingestion_labels {
    view_label: "Entity Graph: Metadata Event Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__ingestion_labels}) as entity_graph__metadata__event_metadata__ingestion_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__capabilities_tags {
    view_label: "Entity Graph: Metadata Threat About File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__capabilities_tags}) as entity_graph__metadata__threat__about__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__department {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__department}) as entity_graph__metadata__threat__about__domain__tech__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__department {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__department}) as entity_graph__metadata__threat__about__domain__zone__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__investigation__comments {
    view_label: "Entity Graph: Metadata Threat About Investigation Comments"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__investigation__comments}) as entity_graph__metadata__threat__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__group_identifiers}) as entity_graph__metadata__threat__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__attack_details__techniques {
    view_label: "Entity Graph: Metadata Threat Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.attack_details__techniques}) as entity_graph__metadata__threat__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__email__to {
    view_label: "Entity Graph: Relations Entity Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__email__to}) as entity_graph__relations__entity__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain {
    view_label: "Entity Graph: Relations Entity User Management Chain"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user_management_chain}) as entity_graph__relations__entity__user_management_chain ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__tags {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__tags}) as entity_graph__relations__entity__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__email_addresses {
    view_label: "Entity Graph: Relations Entity Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__email_addresses}) as entity_graph__relations__entity__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__email_addresses {
    view_label: "Entity Graph: Relations Entity Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__email_addresses}) as entity_graph__relations__entity__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__email__subject {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__email__subject}) as entity_graph__entity__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__smtp__server_response {
    view_label: "Entity Graph: Entity Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__smtp__server_response}) as entity_graph__entity__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Entity File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__resources_type_count}) as entity_graph__entity__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Entity File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__signature_info__x509}) as entity_graph__entity__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__resource {
    view_label: "Entity Graph: Entity Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__resource}) as entity_graph__entity__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__email_addresses {
    view_label: "Entity Graph: Entity User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.email_addresses}) as entity_graph__entity__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__base_labels__log_types {
    view_label: "Entity Graph: Metadata Event Metadata Base Labels Log Types"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__base_labels__log_types}) as entity_graph__metadata__event_metadata__base_labels__log_types ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__dns__answers {
    view_label: "Entity Graph: Metadata Threat About Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__dns__answers}) as entity_graph__metadata__threat__about__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__group__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__group__email_addresses}) as entity_graph__metadata__threat__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__department {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__department}) as entity_graph__metadata__threat__about__domain__admin__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__smtp__server_response {
    view_label: "Entity Graph: Relations Entity Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__smtp__server_response}) as entity_graph__relations__entity__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__imports {
    view_label: "Entity Graph: Relations Entity File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__imports}) as entity_graph__relations__entity__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__group__attribute__roles {
    view_label: "Entity Graph: Relations Entity Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__group__attribute__roles}) as entity_graph__relations__entity__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__group__attribute__labels {
    view_label: "Entity Graph: Relations Entity Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__group__attribute__labels}) as entity_graph__relations__entity__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__command_line_history {
    view_label: "Entity Graph: Relations Entity Process Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__command_line_history}) as entity_graph__relations__entity__process__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__outcomes {
    view_label: "Entity Graph: Relations Entity Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.outcomes}) as entity_graph__relations__entity__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__names {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__names}) as entity_graph__relations__entity__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__email_addresses {
    view_label: "Entity Graph: Relations Entity Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__email_addresses}) as entity_graph__relations__entity__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__phone_numbers {
    view_label: "Entity Graph: Relations Entity Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__phone_numbers}) as entity_graph__relations__entity__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__department {
    view_label: "Entity Graph: Relations Entity Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__department}) as entity_graph__relations__entity__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Entity File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__signature_info__sigcheck__x509}) as entity_graph__entity__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__imports__functions {
    view_label: "Entity Graph: Entity Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process__file__pe_file__imports.functions}) as entity_graph__entity__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__command_line_history {
    view_label: "Entity Graph: Entity Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.command_line_history}) as entity_graph__entity__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__tech__attribute__permissions {
    view_label: "Entity Graph: Entity Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__tech__attribute__permissions}) as entity_graph__entity__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__zone__attribute__permissions {
    view_label: "Entity Graph: Entity Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__zone__attribute__permissions}) as entity_graph__entity__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__time_off {
    view_label: "Entity Graph: Entity Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__time_off}) as entity_graph__entity__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__attribute__roles {
    view_label: "Entity Graph: Entity Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__attribute__roles}) as entity_graph__entity__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__attribute__labels {
    view_label: "Entity Graph: Entity Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__attribute__labels}) as entity_graph__entity__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__base_labels__namespaces {
    view_label: "Entity Graph: Metadata Event Metadata Base Labels Namespaces"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__base_labels__namespaces}) as entity_graph__metadata__event_metadata__base_labels__namespaces ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Relations Entity Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__smtp__rcpt_to}) as entity_graph__relations__entity__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__resource {
    view_label: "Entity Graph: Relations Entity File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__resource}) as entity_graph__relations__entity__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__embedded_domains {
    view_label: "Entity Graph: Relations Entity Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__embedded_domains}) as entity_graph__relations__entity__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource__attribute__roles {
    view_label: "Entity Graph: Relations Entity Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__resource__attribute__roles}) as entity_graph__relations__entity__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource__attribute__labels {
    view_label: "Entity Graph: Relations Entity Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__resource__attribute__labels}) as entity_graph__relations__entity__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__group_identifiers {
    view_label: "Entity Graph: Relations Entity Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__group_identifiers}) as entity_graph__relations__entity__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__group_identifiers {
    view_label: "Entity Graph: Relations Entity Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__group_identifiers}) as entity_graph__relations__entity__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__dns__answers {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__dns__answers}) as entity_graph__entity__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource_ancestors__attribute__roles {
    view_label: "Entity Graph: Entity Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__resource_ancestors.attribute__roles}) as entity_graph__entity__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource_ancestors__attribute__labels {
    view_label: "Entity Graph: Entity Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__resource_ancestors.attribute__labels}) as entity_graph__entity__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__group_identifiers {
    view_label: "Entity Graph: Entity User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.group_identifiers}) as entity_graph__entity__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__associations__alias {
    view_label: "Entity Graph: Entity Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result__associations.alias}) as entity_graph__entity__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__embedded_domains {
    view_label: "Entity Graph: Entity Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__embedded_domains}) as entity_graph__entity__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__admin__attribute__permissions {
    view_label: "Entity Graph: Entity Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__admin__attribute__permissions}) as entity_graph__entity__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__dns__authority {
    view_label: "Entity Graph: Metadata Threat About Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__dns__authority}) as entity_graph__metadata__threat__about__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__dhcp__options {
    view_label: "Entity Graph: Metadata Threat About Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__dhcp__options}) as entity_graph__metadata__threat__about__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__email__cc {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__email__cc}) as entity_graph__metadata__threat__about__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__section {
    view_label: "Entity Graph: Metadata Threat About File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__section}) as entity_graph__metadata__threat__about__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__embedded_ips {
    view_label: "Entity Graph: Metadata Threat About Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__embedded_ips}) as entity_graph__metadata__threat__about__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__phone_numbers}) as entity_graph__metadata__threat__about__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__department {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__department}) as entity_graph__metadata__threat__about__domain__billing__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__phone_numbers}) as entity_graph__metadata__threat__about__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__time_off {
    view_label: "Entity Graph: Metadata Threat About User Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__time_off}) as entity_graph__metadata__threat__about__user__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__attribute__roles}) as entity_graph__metadata__threat__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__attribute__labels}) as entity_graph__metadata__threat__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__email__subject {
    view_label: "Entity Graph: Relations Entity Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__email__subject}) as entity_graph__relations__entity__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__vpc__attribute__roles {
    view_label: "Entity Graph: Relations Entity Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__vpc__attribute__roles}) as entity_graph__relations__entity__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__vpc__attribute__labels {
    view_label: "Entity Graph: Relations Entity Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__vpc__attribute__labels}) as entity_graph__relations__entity__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__imports__functions {
    view_label: "Entity Graph: Relations Entity File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__file__pe_file__imports.functions}) as entity_graph__relations__entity__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__capabilities_tags {
    view_label: "Entity Graph: Relations Entity Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__capabilities_tags}) as entity_graph__relations__entity__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__group_identifiers {
    view_label: "Entity Graph: Relations Entity Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__group_identifiers}) as entity_graph__relations__entity__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__email_addresses {
    view_label: "Entity Graph: Relations Entity Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__email_addresses}) as entity_graph__relations__entity__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__cloud__project__attribute__permissions {
    view_label: "Entity Graph: Entity Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__cloud__project__attribute__permissions}) as entity_graph__entity__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Entity File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__signature_info__signers}) as entity_graph__entity__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__capabilities_tags {
    view_label: "Entity Graph: Entity Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__capabilities_tags}) as entity_graph__entity__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__associations__industries_affected {
    view_label: "Entity Graph: Metadata Threat Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__associations.industries_affected}) as entity_graph__metadata__threat__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__dns__additional {
    view_label: "Entity Graph: Metadata Threat About Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__dns__additional}) as entity_graph__metadata__threat__about__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__dns__questions {
    view_label: "Entity Graph: Metadata Threat About Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__dns__questions}) as entity_graph__metadata__threat__about__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__email__bcc {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__email__bcc}) as entity_graph__metadata__threat__about__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__embedded_urls {
    view_label: "Entity Graph: Metadata Threat About Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__embedded_urls}) as entity_graph__metadata__threat__about__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__phone_numbers}) as entity_graph__metadata__threat__about__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__vulnerabilities {
    view_label: "Entity Graph: Metadata Threat About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__vulnerabilities}) as entity_graph__metadata__threat__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__attribute__roles}) as entity_graph__metadata__threat__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__attribute__labels}) as entity_graph__metadata__threat__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__associations {
    view_label: "Entity Graph: Relations Entity Security Result Associations"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.associations}) as entity_graph__relations__entity__security_result__associations ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__rule_labels {
    view_label: "Entity Graph: Relations Entity Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.rule_labels}) as entity_graph__relations__entity__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__phone_numbers {
    view_label: "Entity Graph: Relations Entity Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__phone_numbers}) as entity_graph__relations__entity__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__software__permissions {
    view_label: "Entity Graph: Relations Entity Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__asset__software.permissions}) as entity_graph__relations__entity__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user__attribute__permissions {
    view_label: "Entity Graph: Relations Entity User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__user__attribute__permissions}) as entity_graph__relations__entity__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__dns__authority {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__dns__authority}) as entity_graph__entity__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__dhcp__options {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__dhcp__options}) as entity_graph__entity__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Entity File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__resources_language_count}) as entity_graph__entity__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Entity File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__resources_type_count_str}) as entity_graph__entity__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Entity File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__signature_info__sigcheck__signers}) as entity_graph__entity__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__associations__country_code {
    view_label: "Entity Graph: Entity Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result__associations.country_code}) as entity_graph__entity__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__attack_details__tactics {
    view_label: "Entity Graph: Entity Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.attack_details__tactics}) as entity_graph__entity__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__billing__attribute__permissions {
    view_label: "Entity Graph: Entity Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__billing__attribute__permissions}) as entity_graph__entity__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__tags__data_tap_config_name {
    view_label: "Entity Graph: Metadata Event Metadata Tags Data Tap Config Name"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__tags__data_tap_config_name}) as entity_graph__metadata__event_metadata__tags__data_tap_config_name ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__base_labels__custom_labels {
    view_label: "Entity Graph: Metadata Event Metadata Base Labels Custom Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__base_labels__custom_labels}) as entity_graph__metadata__event_metadata__base_labels__custom_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__email__to {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__email__to}) as entity_graph__metadata__threat__about__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain {
    view_label: "Entity Graph: Metadata Threat About User Management Chain"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user_management_chain}) as entity_graph__metadata__threat__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__tags {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__tags}) as entity_graph__metadata__threat__about__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__email_addresses}) as entity_graph__metadata__threat__about__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__email_addresses}) as entity_graph__metadata__threat__about__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__email__cc {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__email__cc}) as entity_graph__relations__entity__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__dns__answers {
    view_label: "Entity Graph: Relations Entity Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__dns__answers}) as entity_graph__relations__entity__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__department {
    view_label: "Entity Graph: Relations Entity User Management Chain Department"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.department}) as entity_graph__relations__entity__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__category_details {
    view_label: "Entity Graph: Relations Entity Security Result Category Details"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.category_details}) as entity_graph__relations__entity__security_result__category_details ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__time_off {
    view_label: "Entity Graph: Relations Entity Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__time_off}) as entity_graph__relations__entity__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__attribute__roles {
    view_label: "Entity Graph: Relations Entity Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__attribute__roles}) as entity_graph__relations__entity__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__attribute__labels {
    view_label: "Entity Graph: Relations Entity Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__attribute__labels}) as entity_graph__relations__entity__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__group_identifiers {
    view_label: "Entity Graph: Relations Entity Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__group_identifiers}) as entity_graph__relations__entity__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__time_off {
    view_label: "Entity Graph: Relations Entity Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__time_off}) as entity_graph__relations__entity__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__attribute__roles {
    view_label: "Entity Graph: Relations Entity Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__attribute__roles}) as entity_graph__relations__entity__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__attribute__labels {
    view_label: "Entity Graph: Relations Entity Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__attribute__labels}) as entity_graph__relations__entity__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__asset__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__asset__attribute__permissions}) as entity_graph__relations__entity__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__dns__additional {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__dns__additional}) as entity_graph__entity__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__dns__questions {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__dns__questions}) as entity_graph__entity__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Entity Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__signature_info__signer}) as entity_graph__entity__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__time_off {
    view_label: "Entity Graph: Entity User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.time_off}) as entity_graph__entity__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__attribute__roles {
    view_label: "Entity Graph: Entity User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.attribute__roles}) as entity_graph__entity__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__attribute__labels {
    view_label: "Entity Graph: Entity User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.attribute__labels}) as entity_graph__entity__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__smtp__server_response {
    view_label: "Entity Graph: Metadata Threat About Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__smtp__server_response}) as entity_graph__metadata__threat__about__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__imports {
    view_label: "Entity Graph: Metadata Threat About File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__imports}) as entity_graph__metadata__threat__about__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__group__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__group__attribute__roles}) as entity_graph__metadata__threat__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__group__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__group__attribute__labels}) as entity_graph__metadata__threat__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__command_line_history {
    view_label: "Entity Graph: Metadata Threat About Process Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__command_line_history}) as entity_graph__metadata__threat__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__names {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__names}) as entity_graph__metadata__threat__about__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__email_addresses}) as entity_graph__metadata__threat__about__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__phone_numbers}) as entity_graph__metadata__threat__about__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__department {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__department}) as entity_graph__metadata__threat__about__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__email__bcc {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__email__bcc}) as entity_graph__relations__entity__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__section {
    view_label: "Entity Graph: Relations Entity Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__section}) as entity_graph__relations__entity__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__time_off {
    view_label: "Entity Graph: Relations Entity Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__time_off}) as entity_graph__relations__entity__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__attribute__roles {
    view_label: "Entity Graph: Relations Entity Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__attribute__roles}) as entity_graph__relations__entity__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__attribute__labels {
    view_label: "Entity Graph: Relations Entity Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__attribute__labels}) as entity_graph__relations__entity__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__email_addresses {
    view_label: "Entity Graph: Relations Entity Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__email_addresses}) as entity_graph__relations__entity__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Entity Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__signature_info__sigcheck__signer}) as entity_graph__entity__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__section {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__section}) as entity_graph__entity__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__enrichment_labels__log_types {
    view_label: "Entity Graph: Metadata Event Metadata Enrichment Labels Log Types"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__enrichment_labels__log_types}) as entity_graph__metadata__event_metadata__enrichment_labels__log_types ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__smtp__rcpt_to}) as entity_graph__metadata__threat__about__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__resource {
    view_label: "Entity Graph: Metadata Threat About File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__resource}) as entity_graph__metadata__threat__about__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__embedded_domains {
    view_label: "Entity Graph: Metadata Threat About Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__embedded_domains}) as entity_graph__metadata__threat__about__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__resource__attribute__roles}) as entity_graph__metadata__threat__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__resource__attribute__labels}) as entity_graph__metadata__threat__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__group_identifiers}) as entity_graph__metadata__threat__about__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__group_identifiers}) as entity_graph__metadata__threat__about__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__email__to {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__email__to}) as entity_graph__relations__entity__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__dns__authority {
    view_label: "Entity Graph: Relations Entity Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__dns__authority}) as entity_graph__relations__entity__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__dhcp__options {
    view_label: "Entity Graph: Relations Entity Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__dhcp__options}) as entity_graph__relations__entity__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__project__attribute__roles {
    view_label: "Entity Graph: Relations Entity Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__project__attribute__roles}) as entity_graph__relations__entity__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__project__attribute__labels {
    view_label: "Entity Graph: Relations Entity Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__project__attribute__labels}) as entity_graph__relations__entity__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Relations Entity File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__signature_info__signer}) as entity_graph__relations__entity__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__group__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__group__attribute__permissions}) as entity_graph__relations__entity__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__smtp__server_response {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__smtp__server_response}) as entity_graph__entity__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__attack_details__techniques {
    view_label: "Entity Graph: Entity Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.attack_details__techniques}) as entity_graph__entity__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__domain__registrant__attribute__permissions {
    view_label: "Entity Graph: Entity Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__domain__registrant__attribute__permissions}) as entity_graph__entity__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__enrichment_labels__namespaces {
    view_label: "Entity Graph: Metadata Event Metadata Enrichment Labels Namespaces"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__enrichment_labels__namespaces}) as entity_graph__metadata__event_metadata__enrichment_labels__namespaces ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__base_labels__ingestion_labels {
    view_label: "Entity Graph: Metadata Event Metadata Base Labels Ingestion Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__base_labels__ingestion_labels}) as entity_graph__metadata__event_metadata__base_labels__ingestion_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__email__subject {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__email__subject}) as entity_graph__metadata__threat__about__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__vpc__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__vpc__attribute__roles}) as entity_graph__metadata__threat__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__vpc__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__vpc__attribute__labels}) as entity_graph__metadata__threat__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__imports__functions {
    view_label: "Entity Graph: Metadata Threat About File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__file__pe_file__imports.functions}) as entity_graph__metadata__threat__about__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__capabilities_tags {
    view_label: "Entity Graph: Metadata Threat About Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__capabilities_tags}) as entity_graph__metadata__threat__about__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__group_identifiers}) as entity_graph__metadata__threat__about__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__email_addresses}) as entity_graph__metadata__threat__about__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__dns__additional {
    view_label: "Entity Graph: Relations Entity Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__dns__additional}) as entity_graph__relations__entity__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__dns__questions {
    view_label: "Entity Graph: Relations Entity Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__dns__questions}) as entity_graph__relations__entity__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Relations Entity File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__signature_info__sigcheck__signer}) as entity_graph__relations__entity__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__resource__attribute__permissions}) as entity_graph__relations__entity__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__phone_numbers {
    view_label: "Entity Graph: Relations Entity User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.phone_numbers}) as entity_graph__relations__entity__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__embedded_ips {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__embedded_ips}) as entity_graph__relations__entity__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__time_off {
    view_label: "Entity Graph: Relations Entity Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__time_off}) as entity_graph__relations__entity__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__attribute__roles {
    view_label: "Entity Graph: Relations Entity Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__attribute__roles}) as entity_graph__relations__entity__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__attribute__labels {
    view_label: "Entity Graph: Relations Entity Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__attribute__labels}) as entity_graph__relations__entity__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__group_identifiers {
    view_label: "Entity Graph: Relations Entity Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__group_identifiers}) as entity_graph__relations__entity__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Entity Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__network__http__parsed_user_agent__annotation}) as entity_graph__entity__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Entity Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__tls__client__supported_ciphers}) as entity_graph__entity__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Entity File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__file__pe_file__resources_language_count_str}) as entity_graph__entity__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Entity Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__resources_type_count}) as entity_graph__entity__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Entity Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__signature_info__x509}) as entity_graph__entity__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__resource_ancestors__attribute__permissions {
    view_label: "Entity Graph: Entity Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__resource_ancestors.attribute__permissions}) as entity_graph__entity__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__phone_numbers}) as entity_graph__metadata__threat__about__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__software__permissions {
    view_label: "Entity Graph: Metadata Threat About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__asset__software.permissions}) as entity_graph__metadata__threat__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__user__attribute__permissions}) as entity_graph__metadata__threat__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__verdict__verdict__mandiant_sources {
    view_label: "Entity Graph: Metadata Threat Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.verdict__verdict__mandiant_sources}) as entity_graph__metadata__threat__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__smtp__rcpt_to}) as entity_graph__relations__entity__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Relations Entity Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__tls__client__supported_ciphers}) as entity_graph__relations__entity__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__vpc__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__vpc__attribute__permissions}) as entity_graph__relations__entity__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__imports {
    view_label: "Entity Graph: Relations Entity Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__imports}) as entity_graph__relations__entity__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__detection_fields {
    view_label: "Entity Graph: Relations Entity Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.detection_fields}) as entity_graph__relations__entity__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__embedded_urls {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__embedded_urls}) as entity_graph__relations__entity__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Entity Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__signature_info__sigcheck__x509}) as entity_graph__entity__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__imports {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__imports}) as entity_graph__entity__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__cc {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__email__cc}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__dns__answers {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__dns__answers}) as entity_graph__metadata__threat__about__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__department {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.department}) as entity_graph__metadata__threat__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__time_off {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__time_off}) as entity_graph__metadata__threat__about__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__attribute__roles}) as entity_graph__metadata__threat__about__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__attribute__labels}) as entity_graph__metadata__threat__about__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__group_identifiers}) as entity_graph__metadata__threat__about__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__time_off {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__time_off}) as entity_graph__metadata__threat__about__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__attribute__roles}) as entity_graph__metadata__threat__about__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__attribute__labels}) as entity_graph__metadata__threat__about__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__asset__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__asset__attribute__permissions}) as entity_graph__metadata__threat__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__email__subject {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__email__subject}) as entity_graph__relations__entity__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__smtp__server_response {
    view_label: "Entity Graph: Relations Entity Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__smtp__server_response}) as entity_graph__relations__entity__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Relations Entity File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__resources_type_count}) as entity_graph__relations__entity__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Relations Entity File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__signature_info__x509}) as entity_graph__relations__entity__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__resource {
    view_label: "Entity Graph: Relations Entity Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__resource}) as entity_graph__relations__entity__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__email_addresses {
    view_label: "Entity Graph: Relations Entity User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.email_addresses}) as entity_graph__relations__entity__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__resource {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__resource}) as entity_graph__entity__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__enrichment_labels__custom_labels {
    view_label: "Entity Graph: Metadata Event Metadata Enrichment Labels Custom Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__enrichment_labels__custom_labels}) as entity_graph__metadata__event_metadata__enrichment_labels__custom_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__bcc {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__email__bcc}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__section {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__section}) as entity_graph__metadata__threat__about__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__time_off {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__time_off}) as entity_graph__metadata__threat__about__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__attribute__roles}) as entity_graph__metadata__threat__about__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__attribute__labels}) as entity_graph__metadata__threat__about__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__email_addresses {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__email_addresses}) as entity_graph__metadata__threat__about__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Relations Entity File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__signature_info__sigcheck__x509}) as entity_graph__relations__entity__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__imports__functions {
    view_label: "Entity Graph: Relations Entity Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process__file__pe_file__imports.functions}) as entity_graph__relations__entity__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__command_line_history {
    view_label: "Entity Graph: Relations Entity Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.command_line_history}) as entity_graph__relations__entity__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__tech__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__tech__attribute__permissions}) as entity_graph__relations__entity__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__zone__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__zone__attribute__permissions}) as entity_graph__relations__entity__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__time_off {
    view_label: "Entity Graph: Relations Entity Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__time_off}) as entity_graph__relations__entity__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__attribute__roles {
    view_label: "Entity Graph: Relations Entity Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__attribute__roles}) as entity_graph__relations__entity__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__attribute__labels {
    view_label: "Entity Graph: Relations Entity Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__attribute__labels}) as entity_graph__relations__entity__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Entity Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__signature_info__signers}) as entity_graph__entity__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__user_management_chain__attribute__permissions {
    view_label: "Entity Graph: Entity User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__user_management_chain.attribute__permissions}) as entity_graph__entity__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__associations__industries_affected {
    view_label: "Entity Graph: Entity Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result__associations.industries_affected}) as entity_graph__entity__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__imports__functions {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors__file__pe_file__imports.functions}) as entity_graph__entity__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__to {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__email__to}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__dns__authority {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__dns__authority}) as entity_graph__metadata__threat__about__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__dhcp__options {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__dhcp__options}) as entity_graph__metadata__threat__about__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__project__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__project__attribute__roles}) as entity_graph__metadata__threat__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__project__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__project__attribute__labels}) as entity_graph__metadata__threat__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Metadata Threat About File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__signature_info__signer}) as entity_graph__metadata__threat__about__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__group__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__group__attribute__permissions}) as entity_graph__metadata__threat__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__verdict__verdict__third_party_sources {
    view_label: "Entity Graph: Metadata Threat Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.verdict__verdict__third_party_sources}) as entity_graph__metadata__threat__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__dns__answers {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__dns__answers}) as entity_graph__relations__entity__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource_ancestors__attribute__roles {
    view_label: "Entity Graph: Relations Entity Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__resource_ancestors.attribute__roles}) as entity_graph__relations__entity__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource_ancestors__attribute__labels {
    view_label: "Entity Graph: Relations Entity Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__resource_ancestors.attribute__labels}) as entity_graph__relations__entity__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__group_identifiers {
    view_label: "Entity Graph: Relations Entity User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.group_identifiers}) as entity_graph__relations__entity__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__associations__alias {
    view_label: "Entity Graph: Relations Entity Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result__associations.alias}) as entity_graph__relations__entity__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__embedded_domains {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__embedded_domains}) as entity_graph__relations__entity__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__admin__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__admin__attribute__permissions}) as entity_graph__relations__entity__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Entity Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__resources_language_count}) as entity_graph__entity__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Entity Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__resources_type_count_str}) as entity_graph__entity__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Entity Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__signature_info__sigcheck__signers}) as entity_graph__entity__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__dns__additional {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__dns__additional}) as entity_graph__metadata__threat__about__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__dns__questions {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__dns__questions}) as entity_graph__metadata__threat__about__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Metadata Threat About File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__signature_info__sigcheck__signer}) as entity_graph__metadata__threat__about__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__resource__attribute__permissions}) as entity_graph__metadata__threat__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__phone_numbers {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.phone_numbers}) as entity_graph__metadata__threat__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__embedded_ips {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__embedded_ips}) as entity_graph__metadata__threat__about__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__time_off {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__time_off}) as entity_graph__metadata__threat__about__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__attribute__roles}) as entity_graph__metadata__threat__about__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__attribute__labels}) as entity_graph__metadata__threat__about__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__group_identifiers}) as entity_graph__metadata__threat__about__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__cloud__project__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__cloud__project__attribute__permissions}) as entity_graph__relations__entity__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Relations Entity File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__signature_info__signers}) as entity_graph__relations__entity__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__capabilities_tags {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__capabilities_tags}) as entity_graph__relations__entity__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__enrichment_labels__ingestion_labels {
    view_label: "Entity Graph: Metadata Event Metadata Enrichment Labels Ingestion Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__enrichment_labels__ingestion_labels}) as entity_graph__metadata__event_metadata__enrichment_labels__ingestion_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__smtp__rcpt_to}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Metadata Threat About Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__tls__client__supported_ciphers}) as entity_graph__metadata__threat__about__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__vpc__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__vpc__attribute__permissions}) as entity_graph__metadata__threat__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__imports {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__imports}) as entity_graph__metadata__threat__about__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__embedded_urls {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__embedded_urls}) as entity_graph__metadata__threat__about__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__dns__authority {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__dns__authority}) as entity_graph__relations__entity__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__dhcp__options {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__dhcp__options}) as entity_graph__relations__entity__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Relations Entity File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__resources_language_count}) as entity_graph__relations__entity__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Relations Entity File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__resources_type_count_str}) as entity_graph__relations__entity__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Relations Entity File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__signature_info__sigcheck__signers}) as entity_graph__relations__entity__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__associations__country_code {
    view_label: "Entity Graph: Relations Entity Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result__associations.country_code}) as entity_graph__relations__entity__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__attack_details__tactics {
    view_label: "Entity Graph: Relations Entity Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.attack_details__tactics}) as entity_graph__relations__entity__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__billing__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__billing__attribute__permissions}) as entity_graph__relations__entity__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__base_labels__ingestion_kv_labels {
    view_label: "Entity Graph: Metadata Event Metadata Base Labels Ingestion Kv Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__base_labels__ingestion_kv_labels}) as entity_graph__metadata__event_metadata__base_labels__ingestion_kv_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__email__subject {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__email__subject}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__smtp__server_response {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__smtp__server_response}) as entity_graph__metadata__threat__about__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Metadata Threat About File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__resources_type_count}) as entity_graph__metadata__threat__about__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Metadata Threat About File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__signature_info__x509}) as entity_graph__metadata__threat__about__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__resource {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__resource}) as entity_graph__metadata__threat__about__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__email_addresses {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.email_addresses}) as entity_graph__metadata__threat__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__dns__additional {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__dns__additional}) as entity_graph__relations__entity__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__dns__questions {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__dns__questions}) as entity_graph__relations__entity__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Relations Entity Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__signature_info__signer}) as entity_graph__relations__entity__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__time_off {
    view_label: "Entity Graph: Relations Entity User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.time_off}) as entity_graph__relations__entity__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__attribute__roles {
    view_label: "Entity Graph: Relations Entity User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.attribute__roles}) as entity_graph__relations__entity__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__attribute__labels {
    view_label: "Entity Graph: Relations Entity User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.attribute__labels}) as entity_graph__relations__entity__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__tls__client__supported_ciphers}) as entity_graph__entity__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__signature_info__signer}) as entity_graph__entity__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Metadata Threat About File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__signature_info__sigcheck__x509}) as entity_graph__metadata__threat__about__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__imports__functions {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process__file__pe_file__imports.functions}) as entity_graph__metadata__threat__about__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__command_line_history {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.command_line_history}) as entity_graph__metadata__threat__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__tech__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__tech__attribute__permissions}) as entity_graph__metadata__threat__about__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__zone__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__zone__attribute__permissions}) as entity_graph__metadata__threat__about__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__time_off {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__time_off}) as entity_graph__metadata__threat__about__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__attribute__roles}) as entity_graph__metadata__threat__about__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__attribute__labels}) as entity_graph__metadata__threat__about__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Relations Entity Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__signature_info__sigcheck__signer}) as entity_graph__relations__entity__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__section {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__section}) as entity_graph__relations__entity__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Entity Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__process__file__pe_file__resources_language_count_str}) as entity_graph__entity__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__verdict__verdict__mandiant_sources {
    view_label: "Entity Graph: Entity Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.verdict__verdict__mandiant_sources}) as entity_graph__entity__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Entity Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__signature_info__sigcheck__signer}) as entity_graph__entity__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__answers {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__dns__answers}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource_ancestors__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__resource_ancestors.attribute__roles}) as entity_graph__metadata__threat__about__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource_ancestors__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__resource_ancestors.attribute__labels}) as entity_graph__metadata__threat__about__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__group_identifiers {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.group_identifiers}) as entity_graph__metadata__threat__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__embedded_domains {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__embedded_domains}) as entity_graph__metadata__threat__about__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__admin__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__admin__attribute__permissions}) as entity_graph__metadata__threat__about__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__smtp__server_response {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__smtp__server_response}) as entity_graph__relations__entity__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__attack_details__techniques {
    view_label: "Entity Graph: Relations Entity Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.attack_details__techniques}) as entity_graph__relations__entity__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__domain__registrant__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__domain__registrant__attribute__permissions}) as entity_graph__relations__entity__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Entity Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph.entity__artifact__network__http__parsed_user_agent__annotation}) as entity_graph__entity__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__cloud__project__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__cloud__project__attribute__permissions}) as entity_graph__metadata__threat__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Metadata Threat About File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__signature_info__signers}) as entity_graph__metadata__threat__about__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__capabilities_tags {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__capabilities_tags}) as entity_graph__metadata__threat__about__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Relations Entity Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__network__http__parsed_user_agent__annotation}) as entity_graph__relations__entity__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Relations Entity Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__tls__client__supported_ciphers}) as entity_graph__relations__entity__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Relations Entity File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__file__pe_file__resources_language_count_str}) as entity_graph__relations__entity__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Relations Entity Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__resources_type_count}) as entity_graph__relations__entity__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Relations Entity Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__signature_info__x509}) as entity_graph__relations__entity__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__resource_ancestors__attribute__permissions {
    view_label: "Entity Graph: Relations Entity Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__resource_ancestors.attribute__permissions}) as entity_graph__relations__entity__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__resources_type_count}) as entity_graph__entity__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__signature_info__x509}) as entity_graph__entity__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__authority {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__dns__authority}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__dhcp__options {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__dhcp__options}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Metadata Threat About File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__resources_language_count}) as entity_graph__metadata__threat__about__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Metadata Threat About File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__resources_type_count_str}) as entity_graph__metadata__threat__about__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Metadata Threat About File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__signature_info__sigcheck__signers}) as entity_graph__metadata__threat__about__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__billing__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__billing__attribute__permissions}) as entity_graph__metadata__threat__about__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Relations Entity Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__signature_info__sigcheck__x509}) as entity_graph__relations__entity__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__imports {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__imports}) as entity_graph__relations__entity__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__security_result__verdict__verdict__third_party_sources {
    view_label: "Entity Graph: Entity Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__security_result.verdict__verdict__third_party_sources}) as entity_graph__entity__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Entity Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__signature_info__sigcheck__x509}) as entity_graph__entity__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__additional {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__dns__additional}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__questions {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__dns__questions}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__signature_info__signer}) as entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__time_off {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.time_off}) as entity_graph__metadata__threat__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__attribute__roles {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.attribute__roles}) as entity_graph__metadata__threat__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__attribute__labels {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.attribute__labels}) as entity_graph__metadata__threat__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__resource {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__resource}) as entity_graph__relations__entity__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__event_metadata__enrichment_labels__ingestion_kv_labels {
    view_label: "Entity Graph: Metadata Event Metadata Enrichment Labels Ingestion Kv Labels"
    sql: LEFT JOIN UNNEST(${entity_graph.metadata__event_metadata__enrichment_labels__ingestion_kv_labels}) as entity_graph__metadata__event_metadata__enrichment_labels__ingestion_kv_labels ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Metadata Threat About Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__signature_info__sigcheck__signer}) as entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__section {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__section}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Relations Entity Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__signature_info__signers}) as entity_graph__relations__entity__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__user_management_chain__attribute__permissions {
    view_label: "Entity Graph: Relations Entity User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__user_management_chain.attribute__permissions}) as entity_graph__relations__entity__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__associations__industries_affected {
    view_label: "Entity Graph: Relations Entity Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result__associations.industries_affected}) as entity_graph__relations__entity__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__imports__functions {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors__file__pe_file__imports.functions}) as entity_graph__relations__entity__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__signature_info__signers}) as entity_graph__entity__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__server_response {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__smtp__server_response}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__domain__registrant__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__domain__registrant__attribute__permissions}) as entity_graph__metadata__threat__about__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Relations Entity Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__resources_language_count}) as entity_graph__relations__entity__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Relations Entity Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__resources_type_count_str}) as entity_graph__relations__entity__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Relations Entity Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__signature_info__sigcheck__signers}) as entity_graph__relations__entity__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__resources_language_count}) as entity_graph__entity__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__resources_type_count_str}) as entity_graph__entity__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Entity Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__signature_info__sigcheck__signers}) as entity_graph__entity__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Metadata Threat About Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__network__http__parsed_user_agent__annotation}) as entity_graph__metadata__threat__about__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__tls__client__supported_ciphers}) as entity_graph__metadata__threat__about__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Metadata Threat About File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__file__pe_file__resources_language_count_str}) as entity_graph__metadata__threat__about__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__resources_type_count}) as entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__signature_info__x509}) as entity_graph__metadata__threat__about__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__resource_ancestors__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__resource_ancestors.attribute__permissions}) as entity_graph__metadata__threat__about__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Metadata Threat About Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__signature_info__sigcheck__x509}) as entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__imports}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Entity Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as entity_graph__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resource {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__resource}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__tls__client__supported_ciphers}) as entity_graph__relations__entity__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__signature_info__signer}) as entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__signature_info__signers}) as entity_graph__metadata__threat__about__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__user_management_chain__attribute__permissions {
    view_label: "Entity Graph: Metadata Threat About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__user_management_chain.attribute__permissions}) as entity_graph__metadata__threat__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports__functions {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports.functions}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Relations Entity Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__process__file__pe_file__resources_language_count_str}) as entity_graph__relations__entity__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__verdict__verdict__mandiant_sources {
    view_label: "Entity Graph: Relations Entity Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.verdict__verdict__mandiant_sources}) as entity_graph__relations__entity__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__signature_info__sigcheck__signer}) as entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__entity__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Entity Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__entity__process_ancestors.file__pe_file__resources_language_count_str}) as entity_graph__entity__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__resources_language_count}) as entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__resources_type_count_str}) as entity_graph__metadata__threat__about__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Metadata Threat About Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__signature_info__sigcheck__signers}) as entity_graph__metadata__threat__about__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Relations Entity Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__relations.entity__artifact__network__http__parsed_user_agent__annotation}) as entity_graph__relations__entity__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__resources_type_count}) as entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__signature_info__x509}) as entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__security_result__verdict__verdict__third_party_sources {
    view_label: "Entity Graph: Relations Entity Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__security_result.verdict__verdict__third_party_sources}) as entity_graph__relations__entity__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__signature_info__sigcheck__x509}) as entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__tls__client__supported_ciphers}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__signature_info__signer}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Metadata Threat About Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__process__file__pe_file__resources_language_count_str}) as entity_graph__metadata__threat__about__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__signature_info__sigcheck__signer}) as entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__signature_info__signers}) as entity_graph__relations__entity__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Metadata Threat About Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat.about__artifact__network__http__parsed_user_agent__annotation}) as entity_graph__metadata__threat__about__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__resources_language_count}) as entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__resources_type_count_str}) as entity_graph__relations__entity__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__signature_info__sigcheck__signers}) as entity_graph__relations__entity__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__resources_type_count}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__signature_info__x509}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__signature_info__sigcheck__x509}) as entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Relations Entity Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as entity_graph__relations__entity__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__signature_info__signers}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Relations Entity Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__relations__entity__process_ancestors.file__pe_file__resources_language_count_str}) as entity_graph__relations__entity__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__resources_language_count}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__resources_type_count_str}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__signature_info__sigcheck__signers}) as entity_graph__metadata__threat__about__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Entity Graph: Metadata Threat About Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as entity_graph__metadata__threat__about__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Entity Graph: Metadata Threat About Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${entity_graph__metadata__threat__about__process_ancestors.file__pe_file__resources_language_count_str}) as entity_graph__metadata__threat__about__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
}

explore: ingestion_stats {}

explore: udm_events {
  join: udm_events__about {
    view_label: "Udm Events: About"
    sql: LEFT JOIN UNNEST(${udm_events.about}) as udm_events__about ;;
    relationship: one_to_many
  }
  join: udm_events__src__ip {
    view_label: "Udm Events: Src Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__ip}) as udm_events__src__ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__mac {
    view_label: "Udm Events: Src Mac"
    sql: LEFT JOIN UNNEST(${udm_events.src__mac}) as udm_events__src__mac ;;
    relationship: one_to_many
  }
  join: udm_events__about__ip {
    view_label: "Udm Events: About Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.ip}) as udm_events__about__ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__mac {
    view_label: "Udm Events: About Mac"
    sql: LEFT JOIN UNNEST(${udm_events__about.mac}) as udm_events__about__mac ;;
    relationship: one_to_many
  }
  join: udm_events__target__ip {
    view_label: "Udm Events: Target Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__ip}) as udm_events__target__ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__nat_ip {
    view_label: "Udm Events: Src Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__nat_ip}) as udm_events__src__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__mac {
    view_label: "Udm Events: Target Mac"
    sql: LEFT JOIN UNNEST(${udm_events.target__mac}) as udm_events__target__mac ;;
    relationship: one_to_many
  }
  join: udm_events__observer__ip {
    view_label: "Udm Events: Observer Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__ip}) as udm_events__observer__ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__ip {
    view_label: "Udm Events: Src Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__ip}) as udm_events__src__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__nat_ip {
    view_label: "Udm Events: About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.nat_ip}) as udm_events__about__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary {
    view_label: "Udm Events: Intermediary"
    sql: LEFT JOIN UNNEST(${udm_events.intermediary}) as udm_events__intermediary ;;
    relationship: one_to_many
  }
  join: udm_events__principal__ip {
    view_label: "Udm Events: Principal Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__ip}) as udm_events__principal__ip ;;
    relationship: one_to_many
  }
  join: udm_events__observer__mac {
    view_label: "Udm Events: Observer Mac"
    sql: LEFT JOIN UNNEST(${udm_events.observer__mac}) as udm_events__observer__mac ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__mac {
    view_label: "Udm Events: Src Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__mac}) as udm_events__src__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__target__nat_ip {
    view_label: "Udm Events: Target Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__nat_ip}) as udm_events__target__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__principal__mac {
    view_label: "Udm Events: Principal Mac"
    sql: LEFT JOIN UNNEST(${udm_events.principal__mac}) as udm_events__principal__mac ;;
    relationship: one_to_many
  }
  join: udm_events__src__labels {
    view_label: "Udm Events: Src Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__labels}) as udm_events__src__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__ip {
    view_label: "Udm Events: About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__ip}) as udm_events__about__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__mac {
    view_label: "Udm Events: About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__mac}) as udm_events__about__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__ip {
    view_label: "Udm Events: Intermediary Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.ip}) as udm_events__intermediary__ip ;;
    relationship: one_to_many
  }
  join: udm_events__security_result {
    view_label: "Udm Events: Security Result"
    sql: LEFT JOIN UNNEST(${udm_events.security_result}) as udm_events__security_result ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__ip {
    view_label: "Udm Events: Target Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__ip}) as udm_events__target__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__observer__nat_ip {
    view_label: "Udm Events: Observer Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__nat_ip}) as udm_events__observer__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__nat_ip {
    view_label: "Udm Events: Src Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__nat_ip}) as udm_events__src__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__labels {
    view_label: "Udm Events: About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.labels}) as udm_events__about__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__mac {
    view_label: "Udm Events: Intermediary Mac"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.mac}) as udm_events__intermediary__mac ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__mac {
    view_label: "Udm Events: Target Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__mac}) as udm_events__target__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__network__email__cc {
    view_label: "Udm Events: Network Email Cc"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__cc}) as udm_events__network__email__cc ;;
    relationship: one_to_many
  }
  join: udm_events__principal__nat_ip {
    view_label: "Udm Events: Principal Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__nat_ip}) as udm_events__principal__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__labels {
    view_label: "Udm Events: Target Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__labels}) as udm_events__target__labels ;;
    relationship: one_to_many
  }
  join: udm_events__network__email__bcc {
    view_label: "Udm Events: Network Email Bcc"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__bcc}) as udm_events__network__email__bcc ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__ip {
    view_label: "Udm Events: Observer Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__ip}) as udm_events__observer__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__nat_ip {
    view_label: "Udm Events: About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__nat_ip}) as udm_events__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__network__email__to {
    view_label: "Udm Events: Network Email To"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__to}) as udm_events__network__email__to ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__ip {
    view_label: "Udm Events: Principal Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__ip}) as udm_events__principal__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__mac {
    view_label: "Udm Events: Observer Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__mac}) as udm_events__observer__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__department {
    view_label: "Udm Events: Src User Department"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__department}) as udm_events__src__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__nat_ip {
    view_label: "Udm Events: Intermediary Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.nat_ip}) as udm_events__intermediary__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__nat_ip {
    view_label: "Udm Events: Target Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__nat_ip}) as udm_events__target__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__mac {
    view_label: "Udm Events: Principal Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__mac}) as udm_events__principal__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__observer__labels {
    view_label: "Udm Events: Observer Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__labels}) as udm_events__observer__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__labels {
    view_label: "Udm Events: Src Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__labels}) as udm_events__src__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__labels {
    view_label: "Udm Events: Principal Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__labels}) as udm_events__principal__labels ;;
    relationship: one_to_many
  }
  join: udm_events__additional__fields {
    view_label: "Udm Events: Additional Fields"
    sql: LEFT JOIN UNNEST(${udm_events.additional__fields}) as udm_events__additional__fields ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__department {
    view_label: "Udm Events: About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__department}) as udm_events__about__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__ip {
    view_label: "Udm Events: Intermediary Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__ip}) as udm_events__intermediary__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__network__email__subject {
    view_label: "Udm Events: Network Email Subject"
    sql: LEFT JOIN UNNEST(${udm_events.network__email__subject}) as udm_events__network__email__subject ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__nat_ip {
    view_label: "Udm Events: Observer Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__nat_ip}) as udm_events__observer__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__hardware {
    view_label: "Udm Events: Src Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__hardware}) as udm_events__src__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__phone_numbers {
    view_label: "Udm Events: Src User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__phone_numbers}) as udm_events__src__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__labels {
    view_label: "Udm Events: About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__labels}) as udm_events__about__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__mac {
    view_label: "Udm Events: Intermediary Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__mac}) as udm_events__intermediary__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__action {
    view_label: "Udm Events: Security Result Action"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.action}) as udm_events__security_result__action ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__department {
    view_label: "Udm Events: Target User Department"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__department}) as udm_events__target__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__nat_ip {
    view_label: "Udm Events: Principal Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__nat_ip}) as udm_events__principal__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__metadata__tags__tenant_id {
    view_label: "Udm Events: Metadata Tags Tenant Id"
    sql: LEFT JOIN UNNEST(${udm_events.metadata__tags__tenant_id}) as udm_events__metadata__tags__tenant_id ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__software {
    view_label: "Udm Events: Src Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__software}) as udm_events__src__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__labels {
    view_label: "Udm Events: Intermediary Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.labels}) as udm_events__intermediary__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__labels {
    view_label: "Udm Events: Target Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__labels}) as udm_events__target__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__network__dns__answers {
    view_label: "Udm Events: Network Dns Answers"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__answers}) as udm_events__network__dns__answers ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__email_addresses {
    view_label: "Udm Events: Src User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__email_addresses}) as udm_events__src__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__hardware {
    view_label: "Udm Events: About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__hardware}) as udm_events__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__phone_numbers {
    view_label: "Udm Events: About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__phone_numbers}) as udm_events__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__ip {
    view_label: "Udm Events: Security Result About Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__ip}) as udm_events__security_result__about__ip ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__category {
    view_label: "Udm Events: Security Result Category"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.category}) as udm_events__security_result__category ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__department {
    view_label: "Udm Events: Observer User Department"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__department}) as udm_events__observer__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__src__process_ancestors {
    view_label: "Udm Events: Src Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.src__process_ancestors}) as udm_events__src__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__software {
    view_label: "Udm Events: About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__software}) as udm_events__about__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__nat_ip {
    view_label: "Udm Events: Intermediary Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__nat_ip}) as udm_events__intermediary__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__mac {
    view_label: "Udm Events: Security Result About Mac"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__mac}) as udm_events__security_result__about__mac ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__hardware {
    view_label: "Udm Events: Target Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__hardware}) as udm_events__target__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__phone_numbers {
    view_label: "Udm Events: Target User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__phone_numbers}) as udm_events__target__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__network__dns__authority {
    view_label: "Udm Events: Network Dns Authority"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__authority}) as udm_events__network__dns__authority ;;
    relationship: one_to_many
  }
  join: udm_events__network__dhcp__options {
    view_label: "Udm Events: Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${udm_events.network__dhcp__options}) as udm_events__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__department {
    view_label: "Udm Events: Principal User Department"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__department}) as udm_events__principal__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__labels {
    view_label: "Udm Events: Observer Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__labels}) as udm_events__observer__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__auth__mechanism {
    view_label: "Udm Events: Extensions Auth Mechanism"
    sql: LEFT JOIN UNNEST(${udm_events.extensions__auth__mechanism}) as udm_events__extensions__auth__mechanism ;;
    relationship: one_to_many
  }
  join: udm_events__src__investigation__comments {
    view_label: "Udm Events: Src Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.src__investigation__comments}) as udm_events__src__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__group_identifiers {
    view_label: "Udm Events: Src User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__group_identifiers}) as udm_events__src__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__email_addresses {
    view_label: "Udm Events: About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__email_addresses}) as udm_events__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__software {
    view_label: "Udm Events: Target Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__software}) as udm_events__target__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__network__dns__additional {
    view_label: "Udm Events: Network Dns Additional"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__additional}) as udm_events__network__dns__additional ;;
    relationship: one_to_many
  }
  join: udm_events__network__dns__questions {
    view_label: "Udm Events: Network Dns Questions"
    sql: LEFT JOIN UNNEST(${udm_events.network__dns__questions}) as udm_events__network__dns__questions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__labels {
    view_label: "Udm Events: Principal Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__labels}) as udm_events__principal__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__group__email_addresses {
    view_label: "Udm Events: Src Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__email_addresses}) as udm_events__src__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__about__process_ancestors {
    view_label: "Udm Events: About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__about.process_ancestors}) as udm_events__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__email_addresses {
    view_label: "Udm Events: Target User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__email_addresses}) as udm_events__target__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__hardware {
    view_label: "Udm Events: Observer Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__hardware}) as udm_events__observer__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__phone_numbers {
    view_label: "Udm Events: Observer User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__phone_numbers}) as udm_events__observer__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__about__investigation__comments {
    view_label: "Udm Events: About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__about.investigation__comments}) as udm_events__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__group_identifiers {
    view_label: "Udm Events: About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__group_identifiers}) as udm_events__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__department {
    view_label: "Udm Events: Intermediary User Department"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__department}) as udm_events__intermediary__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__nat_ip {
    view_label: "Udm Events: Security Result About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__nat_ip}) as udm_events__security_result__about__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__process_ancestors {
    view_label: "Udm Events: Target Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.target__process_ancestors}) as udm_events__target__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__hardware {
    view_label: "Udm Events: Principal Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__hardware}) as udm_events__principal__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__phone_numbers {
    view_label: "Udm Events: Principal User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__phone_numbers}) as udm_events__principal__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__software {
    view_label: "Udm Events: Observer Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__software}) as udm_events__observer__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__metadata__ingestion_labels {
    view_label: "Udm Events: Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${udm_events.metadata__ingestion_labels}) as udm_events__metadata__ingestion_labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__time_off {
    view_label: "Udm Events: Src User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__time_off}) as udm_events__src__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__attribute__roles {
    view_label: "Udm Events: Src User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__roles}) as udm_events__src__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__attribute__labels {
    view_label: "Udm Events: Src User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__labels}) as udm_events__src__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__group__email_addresses {
    view_label: "Udm Events: About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__email_addresses}) as udm_events__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__labels {
    view_label: "Udm Events: Intermediary Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__labels}) as udm_events__intermediary__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__investigation__comments {
    view_label: "Udm Events: Target Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.target__investigation__comments}) as udm_events__target__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__group_identifiers {
    view_label: "Udm Events: Target User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__group_identifiers}) as udm_events__target__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__software {
    view_label: "Udm Events: Principal Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__software}) as udm_events__principal__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__email_addresses {
    view_label: "Udm Events: Observer User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__email_addresses}) as udm_events__observer__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__vulnerabilities {
    view_label: "Udm Events: Src Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__vulnerabilities}) as udm_events__src__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__attribute__roles {
    view_label: "Udm Events: Src Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__roles}) as udm_events__src__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__attribute__labels {
    view_label: "Udm Events: Src Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__labels}) as udm_events__src__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__ip {
    view_label: "Udm Events: Security Result About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__ip}) as udm_events__security_result__about__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__group__email_addresses {
    view_label: "Udm Events: Target Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__email_addresses}) as udm_events__target__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__email_addresses {
    view_label: "Udm Events: Principal User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__email_addresses}) as udm_events__principal__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__observer__process_ancestors {
    view_label: "Udm Events: Observer Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.observer__process_ancestors}) as udm_events__observer__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain {
    view_label: "Udm Events: Src User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.src__user_management_chain}) as udm_events__src__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__time_off {
    view_label: "Udm Events: About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__time_off}) as udm_events__about__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__attribute__roles {
    view_label: "Udm Events: About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__roles}) as udm_events__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__attribute__labels {
    view_label: "Udm Events: About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__labels}) as udm_events__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__hardware {
    view_label: "Udm Events: Intermediary Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__hardware}) as udm_events__intermediary__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__phone_numbers {
    view_label: "Udm Events: Intermediary User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__phone_numbers}) as udm_events__intermediary__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__mac {
    view_label: "Udm Events: Security Result About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__mac}) as udm_events__security_result__about__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__rule_labels {
    view_label: "Udm Events: Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.rule_labels}) as udm_events__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__process_ancestors {
    view_label: "Udm Events: Principal Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events.principal__process_ancestors}) as udm_events__principal__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__observer__investigation__comments {
    view_label: "Udm Events: Observer Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.observer__investigation__comments}) as udm_events__observer__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__group_identifiers {
    view_label: "Udm Events: Observer User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__group_identifiers}) as udm_events__observer__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__src__group__attribute__roles {
    view_label: "Udm Events: Src Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__roles}) as udm_events__src__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__group__attribute__labels {
    view_label: "Udm Events: Src Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__labels}) as udm_events__src__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__process__command_line_history {
    view_label: "Udm Events: Src Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.src__process__command_line_history}) as udm_events__src__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__vulnerabilities {
    view_label: "Udm Events: About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__vulnerabilities}) as udm_events__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__attribute__roles {
    view_label: "Udm Events: About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__roles}) as udm_events__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__attribute__labels {
    view_label: "Udm Events: About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__labels}) as udm_events__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__software {
    view_label: "Udm Events: Intermediary Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__software}) as udm_events__intermediary__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__labels {
    view_label: "Udm Events: Security Result About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__labels}) as udm_events__security_result__about__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__category_details {
    view_label: "Udm Events: Security Result Category Details"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.category_details}) as udm_events__security_result__category_details ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__time_off {
    view_label: "Udm Events: Target User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__time_off}) as udm_events__target__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__attribute__roles {
    view_label: "Udm Events: Target User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__roles}) as udm_events__target__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__attribute__labels {
    view_label: "Udm Events: Target User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__labels}) as udm_events__target__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__investigation__comments {
    view_label: "Udm Events: Principal Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events.principal__investigation__comments}) as udm_events__principal__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__group_identifiers {
    view_label: "Udm Events: Principal User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__group_identifiers}) as udm_events__principal__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__observer__group__email_addresses {
    view_label: "Udm Events: Observer Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__email_addresses}) as udm_events__observer__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__src__resource__attribute__roles {
    view_label: "Udm Events: Src Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__roles}) as udm_events__src__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__resource__attribute__labels {
    view_label: "Udm Events: Src Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__labels}) as udm_events__src__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain {
    view_label: "Udm Events: About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__about.user_management_chain}) as udm_events__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__email_addresses {
    view_label: "Udm Events: Intermediary User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__email_addresses}) as udm_events__intermediary__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__vulnerabilities {
    view_label: "Udm Events: Target Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__vulnerabilities}) as udm_events__target__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__attribute__roles {
    view_label: "Udm Events: Target Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__roles}) as udm_events__target__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__attribute__labels {
    view_label: "Udm Events: Target Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__labels}) as udm_events__target__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__group__email_addresses {
    view_label: "Udm Events: Principal Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__email_addresses}) as udm_events__principal__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Src Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__roles}) as udm_events__src__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Src Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__labels}) as udm_events__src__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__group__attribute__roles {
    view_label: "Udm Events: About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__roles}) as udm_events__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__group__attribute__labels {
    view_label: "Udm Events: About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__labels}) as udm_events__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__process__command_line_history {
    view_label: "Udm Events: About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__about.process__command_line_history}) as udm_events__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__process_ancestors {
    view_label: "Udm Events: Intermediary Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.process_ancestors}) as udm_events__intermediary__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__nat_ip {
    view_label: "Udm Events: Security Result About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__nat_ip}) as udm_events__security_result__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain {
    view_label: "Udm Events: Target User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.target__user_management_chain}) as udm_events__target__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__time_off {
    view_label: "Udm Events: Observer User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__time_off}) as udm_events__observer__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__attribute__roles {
    view_label: "Udm Events: Observer User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__roles}) as udm_events__observer__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__attribute__labels {
    view_label: "Udm Events: Observer User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__labels}) as udm_events__observer__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__software__permissions {
    view_label: "Udm Events: Src Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__src__asset__software.permissions}) as udm_events__src__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__src__user__attribute__permissions {
    view_label: "Udm Events: Src User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__user__attribute__permissions}) as udm_events__src__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__resource__attribute__roles {
    view_label: "Udm Events: About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__roles}) as udm_events__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__resource__attribute__labels {
    view_label: "Udm Events: About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__labels}) as udm_events__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__investigation__comments {
    view_label: "Udm Events: Intermediary Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.investigation__comments}) as udm_events__intermediary__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__group_identifiers {
    view_label: "Udm Events: Intermediary User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__group_identifiers}) as udm_events__intermediary__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__target__group__attribute__roles {
    view_label: "Udm Events: Target Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__roles}) as udm_events__target__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__group__attribute__labels {
    view_label: "Udm Events: Target Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__labels}) as udm_events__target__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__process__command_line_history {
    view_label: "Udm Events: Target Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.target__process__command_line_history}) as udm_events__target__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__time_off {
    view_label: "Udm Events: Principal User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__time_off}) as udm_events__principal__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__attribute__roles {
    view_label: "Udm Events: Principal User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__roles}) as udm_events__principal__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__attribute__labels {
    view_label: "Udm Events: Principal User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__labels}) as udm_events__principal__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__vulnerabilities {
    view_label: "Udm Events: Observer Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__vulnerabilities}) as udm_events__observer__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__attribute__roles {
    view_label: "Udm Events: Observer Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__roles}) as udm_events__observer__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__attribute__labels {
    view_label: "Udm Events: Observer Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__labels}) as udm_events__observer__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__department {
    view_label: "Udm Events: Src User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.department}) as udm_events__src__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__src__asset__attribute__permissions {
    view_label: "Udm Events: Src Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__asset__attribute__permissions}) as udm_events__src__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__roles}) as udm_events__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__labels}) as udm_events__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__group__email_addresses {
    view_label: "Udm Events: Intermediary Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__email_addresses}) as udm_events__intermediary__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__detection_fields {
    view_label: "Udm Events: Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.detection_fields}) as udm_events__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: udm_events__target__resource__attribute__roles {
    view_label: "Udm Events: Target Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__roles}) as udm_events__target__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__resource__attribute__labels {
    view_label: "Udm Events: Target Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__labels}) as udm_events__target__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__network__tls__client__supported_ciphers {
    view_label: "Udm Events: Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${udm_events.network__tls__client__supported_ciphers}) as udm_events__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__vulnerabilities {
    view_label: "Udm Events: Principal Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__vulnerabilities}) as udm_events__principal__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__attribute__roles {
    view_label: "Udm Events: Principal Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__roles}) as udm_events__principal__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__attribute__labels {
    view_label: "Udm Events: Principal Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__labels}) as udm_events__principal__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain {
    view_label: "Udm Events: Observer User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user_management_chain}) as udm_events__observer__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__software__permissions {
    view_label: "Udm Events: About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about__asset__software.permissions}) as udm_events__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__user__attribute__permissions {
    view_label: "Udm Events: About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.user__attribute__permissions}) as udm_events__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__department {
    view_label: "Udm Events: Security Result About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__department}) as udm_events__security_result__about__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Target Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__roles}) as udm_events__target__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Target Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__labels}) as udm_events__target__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain {
    view_label: "Udm Events: Principal User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user_management_chain}) as udm_events__principal__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__observer__group__attribute__roles {
    view_label: "Udm Events: Observer Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__roles}) as udm_events__observer__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__group__attribute__labels {
    view_label: "Udm Events: Observer Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__labels}) as udm_events__observer__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__process__command_line_history {
    view_label: "Udm Events: Observer Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.observer__process__command_line_history}) as udm_events__observer__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events.extensions__vulns__vulnerabilities}) as udm_events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__project__attribute__roles {
    view_label: "Udm Events: Src Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__roles}) as udm_events__src__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__project__attribute__labels {
    view_label: "Udm Events: Src Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__labels}) as udm_events__src__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__group__attribute__permissions {
    view_label: "Udm Events: Src Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__group__attribute__permissions}) as udm_events__src__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__department {
    view_label: "Udm Events: About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.department}) as udm_events__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__about__asset__attribute__permissions {
    view_label: "Udm Events: About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.asset__attribute__permissions}) as udm_events__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__time_off {
    view_label: "Udm Events: Intermediary User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__time_off}) as udm_events__intermediary__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__attribute__roles {
    view_label: "Udm Events: Intermediary User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__roles}) as udm_events__intermediary__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__attribute__labels {
    view_label: "Udm Events: Intermediary User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__labels}) as udm_events__intermediary__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__labels {
    view_label: "Udm Events: Security Result About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__labels}) as udm_events__security_result__about__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__software__permissions {
    view_label: "Udm Events: Target Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__target__asset__software.permissions}) as udm_events__target__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__target__user__attribute__permissions {
    view_label: "Udm Events: Target User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__user__attribute__permissions}) as udm_events__target__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__group__attribute__roles {
    view_label: "Udm Events: Principal Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__roles}) as udm_events__principal__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__group__attribute__labels {
    view_label: "Udm Events: Principal Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__labels}) as udm_events__principal__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__process__command_line_history {
    view_label: "Udm Events: Principal Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events.principal__process__command_line_history}) as udm_events__principal__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__observer__resource__attribute__roles {
    view_label: "Udm Events: Observer Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__roles}) as udm_events__observer__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__resource__attribute__labels {
    view_label: "Udm Events: Observer Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__labels}) as udm_events__observer__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__resource__attribute__permissions {
    view_label: "Udm Events: Src Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__resource__attribute__permissions}) as udm_events__src__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__phone_numbers {
    view_label: "Udm Events: Src User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.phone_numbers}) as udm_events__src__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__vulnerabilities {
    view_label: "Udm Events: Intermediary Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__vulnerabilities}) as udm_events__intermediary__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__attribute__roles {
    view_label: "Udm Events: Intermediary Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__roles}) as udm_events__intermediary__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__attribute__labels {
    view_label: "Udm Events: Intermediary Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__labels}) as udm_events__intermediary__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__department {
    view_label: "Udm Events: Target User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.department}) as udm_events__target__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__target__asset__attribute__permissions {
    view_label: "Udm Events: Target Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__asset__attribute__permissions}) as udm_events__target__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__resource__attribute__roles {
    view_label: "Udm Events: Principal Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__roles}) as udm_events__principal__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__resource__attribute__labels {
    view_label: "Udm Events: Principal Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__labels}) as udm_events__principal__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__roles}) as udm_events__observer__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__labels}) as udm_events__observer__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Src Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__vpc__attribute__permissions}) as udm_events__src__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__project__attribute__roles {
    view_label: "Udm Events: About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__roles}) as udm_events__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__project__attribute__labels {
    view_label: "Udm Events: About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__labels}) as udm_events__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__group__attribute__permissions {
    view_label: "Udm Events: About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.group__attribute__permissions}) as udm_events__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain {
    view_label: "Udm Events: Intermediary User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user_management_chain}) as udm_events__intermediary__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__hardware {
    view_label: "Udm Events: Security Result About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__hardware}) as udm_events__security_result__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__phone_numbers {
    view_label: "Udm Events: Security Result About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__phone_numbers}) as udm_events__security_result__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__roles}) as udm_events__principal__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__labels}) as udm_events__principal__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__software__permissions {
    view_label: "Udm Events: Observer Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__observer__asset__software.permissions}) as udm_events__observer__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user__attribute__permissions {
    view_label: "Udm Events: Observer User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__user__attribute__permissions}) as udm_events__observer__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__email_addresses {
    view_label: "Udm Events: Src User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.email_addresses}) as udm_events__src__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__about__resource__attribute__permissions {
    view_label: "Udm Events: About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.resource__attribute__permissions}) as udm_events__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.phone_numbers}) as udm_events__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__group__attribute__roles {
    view_label: "Udm Events: Intermediary Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__roles}) as udm_events__intermediary__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__group__attribute__labels {
    view_label: "Udm Events: Intermediary Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__labels}) as udm_events__intermediary__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__process__command_line_history {
    view_label: "Udm Events: Intermediary Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.process__command_line_history}) as udm_events__intermediary__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__software {
    view_label: "Udm Events: Security Result About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__software}) as udm_events__security_result__about__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__project__attribute__roles {
    view_label: "Udm Events: Target Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__roles}) as udm_events__target__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__project__attribute__labels {
    view_label: "Udm Events: Target Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__labels}) as udm_events__target__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__group__attribute__permissions {
    view_label: "Udm Events: Target Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__group__attribute__permissions}) as udm_events__target__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__software__permissions {
    view_label: "Udm Events: Principal Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__principal__asset__software.permissions}) as udm_events__principal__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user__attribute__permissions {
    view_label: "Udm Events: Principal User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__user__attribute__permissions}) as udm_events__principal__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__department {
    view_label: "Udm Events: Observer User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.department}) as udm_events__observer__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__observer__asset__attribute__permissions {
    view_label: "Udm Events: Observer Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__asset__attribute__permissions}) as udm_events__observer__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__ip}) as udm_events__extensions__vulns__vulnerabilities__about__ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__process_ancestors__command_line_history {
    view_label: "Udm Events: Src Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__src__process_ancestors.command_line_history}) as udm_events__src__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__vpc__attribute__permissions}) as udm_events__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__resource__attribute__roles {
    view_label: "Udm Events: Intermediary Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__roles}) as udm_events__intermediary__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__resource__attribute__labels {
    view_label: "Udm Events: Intermediary Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__labels}) as udm_events__intermediary__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__email_addresses {
    view_label: "Udm Events: Security Result About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__email_addresses}) as udm_events__security_result__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__target__resource__attribute__permissions {
    view_label: "Udm Events: Target Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__resource__attribute__permissions}) as udm_events__target__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__phone_numbers {
    view_label: "Udm Events: Target User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.phone_numbers}) as udm_events__target__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__department {
    view_label: "Udm Events: Principal User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.department}) as udm_events__principal__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__principal__asset__attribute__permissions {
    view_label: "Udm Events: Principal Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__asset__attribute__permissions}) as udm_events__principal__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__mac {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Mac"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__mac}) as udm_events__extensions__vulns__vulnerabilities__about__mac ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__group_identifiers {
    view_label: "Udm Events: Src User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.group_identifiers}) as udm_events__src__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__email_addresses {
    view_label: "Udm Events: About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.email_addresses}) as udm_events__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__roles}) as udm_events__intermediary__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__labels}) as udm_events__intermediary__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__process_ancestors {
    view_label: "Udm Events: Security Result About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__process_ancestors}) as udm_events__security_result__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Target Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__vpc__attribute__permissions}) as udm_events__target__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__project__attribute__roles {
    view_label: "Udm Events: Observer Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__roles}) as udm_events__observer__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__project__attribute__labels {
    view_label: "Udm Events: Observer Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__labels}) as udm_events__observer__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__group__attribute__permissions {
    view_label: "Udm Events: Observer Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__group__attribute__permissions}) as udm_events__observer__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__src__cloud__project__attribute__permissions {
    view_label: "Udm Events: Src Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.src__cloud__project__attribute__permissions}) as udm_events__src__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__process_ancestors__command_line_history {
    view_label: "Udm Events: About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__about__process_ancestors.command_line_history}) as udm_events__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__software__permissions {
    view_label: "Udm Events: Intermediary Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__asset__software.permissions}) as udm_events__intermediary__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user__attribute__permissions {
    view_label: "Udm Events: Intermediary User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.user__attribute__permissions}) as udm_events__intermediary__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__investigation__comments {
    view_label: "Udm Events: Security Result About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__investigation__comments}) as udm_events__security_result__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__group_identifiers {
    view_label: "Udm Events: Security Result About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__group_identifiers}) as udm_events__security_result__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__email_addresses {
    view_label: "Udm Events: Target User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.email_addresses}) as udm_events__target__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__project__attribute__roles {
    view_label: "Udm Events: Principal Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__roles}) as udm_events__principal__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__project__attribute__labels {
    view_label: "Udm Events: Principal Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__labels}) as udm_events__principal__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__group__attribute__permissions {
    view_label: "Udm Events: Principal Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__group__attribute__permissions}) as udm_events__principal__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__resource__attribute__permissions {
    view_label: "Udm Events: Observer Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__resource__attribute__permissions}) as udm_events__observer__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__phone_numbers {
    view_label: "Udm Events: Observer User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.phone_numbers}) as udm_events__observer__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.group_identifiers}) as udm_events__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__department {
    view_label: "Udm Events: Intermediary User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.department}) as udm_events__intermediary__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__asset__attribute__permissions {
    view_label: "Udm Events: Intermediary Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.asset__attribute__permissions}) as udm_events__intermediary__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__group__email_addresses {
    view_label: "Udm Events: Security Result About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__email_addresses}) as udm_events__security_result__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__target__process_ancestors__command_line_history {
    view_label: "Udm Events: Target Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__target__process_ancestors.command_line_history}) as udm_events__target__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__principal__resource__attribute__permissions {
    view_label: "Udm Events: Principal Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__resource__attribute__permissions}) as udm_events__principal__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__phone_numbers {
    view_label: "Udm Events: Principal User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.phone_numbers}) as udm_events__principal__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Observer Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__vpc__attribute__permissions}) as udm_events__observer__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__nat_ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__nat_ip}) as udm_events__extensions__vulns__vulnerabilities__about__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__time_off {
    view_label: "Udm Events: Src User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.time_off}) as udm_events__src__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__attribute__roles {
    view_label: "Udm Events: Src User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__roles}) as udm_events__src__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__attribute__labels {
    view_label: "Udm Events: Src User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__labels}) as udm_events__src__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about.cloud__project__attribute__permissions}) as udm_events__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__group_identifiers {
    view_label: "Udm Events: Target User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.group_identifiers}) as udm_events__target__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Principal Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__vpc__attribute__permissions}) as udm_events__principal__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__email_addresses {
    view_label: "Udm Events: Observer User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.email_addresses}) as udm_events__observer__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__project__attribute__roles {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__roles}) as udm_events__intermediary__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__project__attribute__labels {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__labels}) as udm_events__intermediary__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__group__attribute__permissions {
    view_label: "Udm Events: Intermediary Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.group__attribute__permissions}) as udm_events__intermediary__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__time_off {
    view_label: "Udm Events: Security Result About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__time_off}) as udm_events__security_result__about__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__attribute__roles {
    view_label: "Udm Events: Security Result About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__roles}) as udm_events__security_result__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__attribute__labels {
    view_label: "Udm Events: Security Result About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__labels}) as udm_events__security_result__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__cloud__project__attribute__permissions {
    view_label: "Udm Events: Target Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.target__cloud__project__attribute__permissions}) as udm_events__target__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__email_addresses {
    view_label: "Udm Events: Principal User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.email_addresses}) as udm_events__principal__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__observer__process_ancestors__command_line_history {
    view_label: "Udm Events: Observer Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__observer__process_ancestors.command_line_history}) as udm_events__observer__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__ip}) as udm_events__extensions__vulns__vulnerabilities__about__asset__ip ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__time_off {
    view_label: "Udm Events: About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.time_off}) as udm_events__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__roles}) as udm_events__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__labels}) as udm_events__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__resource__attribute__permissions {
    view_label: "Udm Events: Intermediary Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.resource__attribute__permissions}) as udm_events__intermediary__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__phone_numbers {
    view_label: "Udm Events: Intermediary User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.phone_numbers}) as udm_events__intermediary__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__vulnerabilities {
    view_label: "Udm Events: Security Result About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__vulnerabilities}) as udm_events__security_result__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__attribute__roles {
    view_label: "Udm Events: Security Result About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__roles}) as udm_events__security_result__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__attribute__labels {
    view_label: "Udm Events: Security Result About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__labels}) as udm_events__security_result__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__process_ancestors__command_line_history {
    view_label: "Udm Events: Principal Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__principal__process_ancestors.command_line_history}) as udm_events__principal__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__group_identifiers {
    view_label: "Udm Events: Observer User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.group_identifiers}) as udm_events__observer__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__mac {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Mac"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__mac}) as udm_events__extensions__vulns__vulnerabilities__about__asset__mac ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Intermediary Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__vpc__attribute__permissions}) as udm_events__intermediary__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain {
    view_label: "Udm Events: Security Result About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user_management_chain}) as udm_events__security_result__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__time_off {
    view_label: "Udm Events: Target User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.time_off}) as udm_events__target__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__attribute__roles {
    view_label: "Udm Events: Target User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__roles}) as udm_events__target__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__attribute__labels {
    view_label: "Udm Events: Target User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__labels}) as udm_events__target__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__group_identifiers {
    view_label: "Udm Events: Principal User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.group_identifiers}) as udm_events__principal__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__observer__cloud__project__attribute__permissions {
    view_label: "Udm Events: Observer Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.observer__cloud__project__attribute__permissions}) as udm_events__observer__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__labels}) as udm_events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__email_addresses {
    view_label: "Udm Events: Intermediary User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.email_addresses}) as udm_events__intermediary__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__group__attribute__roles {
    view_label: "Udm Events: Security Result About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__roles}) as udm_events__security_result__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__group__attribute__labels {
    view_label: "Udm Events: Security Result About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__labels}) as udm_events__security_result__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__process__command_line_history {
    view_label: "Udm Events: Security Result About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__process__command_line_history}) as udm_events__security_result__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__principal__cloud__project__attribute__permissions {
    view_label: "Udm Events: Principal Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events.principal__cloud__project__attribute__permissions}) as udm_events__principal__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__process_ancestors__command_line_history {
    view_label: "Udm Events: Intermediary Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__process_ancestors.command_line_history}) as udm_events__intermediary__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__resource__attribute__roles {
    view_label: "Udm Events: Security Result About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__roles}) as udm_events__security_result__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__resource__attribute__labels {
    view_label: "Udm Events: Security Result About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__labels}) as udm_events__security_result__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__time_off {
    view_label: "Udm Events: Observer User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.time_off}) as udm_events__observer__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__attribute__roles {
    view_label: "Udm Events: Observer User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__roles}) as udm_events__observer__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__attribute__labels {
    view_label: "Udm Events: Observer User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__labels}) as udm_events__observer__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__nat_ip}) as udm_events__extensions__vulns__vulnerabilities__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: udm_events__src__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Src User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__src__user_management_chain.attribute__permissions}) as udm_events__src__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__group_identifiers {
    view_label: "Udm Events: Intermediary User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.group_identifiers}) as udm_events__intermediary__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__roles}) as udm_events__security_result__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__labels}) as udm_events__security_result__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__time_off {
    view_label: "Udm Events: Principal User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.time_off}) as udm_events__principal__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__attribute__roles {
    view_label: "Udm Events: Principal User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__roles}) as udm_events__principal__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__attribute__labels {
    view_label: "Udm Events: Principal User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__labels}) as udm_events__principal__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__cloud__project__attribute__permissions {
    view_label: "Udm Events: Intermediary Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary.cloud__project__attribute__permissions}) as udm_events__intermediary__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__software__permissions {
    view_label: "Udm Events: Security Result About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__asset__software.permissions}) as udm_events__security_result__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user__attribute__permissions {
    view_label: "Udm Events: Security Result About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__user__attribute__permissions}) as udm_events__security_result__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__about__user_management_chain.attribute__permissions}) as udm_events__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__department {
    view_label: "Udm Events: Security Result About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.department}) as udm_events__security_result__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__asset__attribute__permissions {
    view_label: "Udm Events: Security Result About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__asset__attribute__permissions}) as udm_events__security_result__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__department {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Department"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__department}) as udm_events__extensions__vulns__vulnerabilities__about__user__department ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__time_off {
    view_label: "Udm Events: Intermediary User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.time_off}) as udm_events__intermediary__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__attribute__roles {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__roles}) as udm_events__intermediary__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__attribute__labels {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__labels}) as udm_events__intermediary__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__target__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Target User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__target__user_management_chain.attribute__permissions}) as udm_events__target__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__labels}) as udm_events__extensions__vulns__vulnerabilities__about__asset__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__project__attribute__roles {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__roles}) as udm_events__security_result__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__project__attribute__labels {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__labels}) as udm_events__security_result__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__group__attribute__permissions {
    view_label: "Udm Events: Security Result About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__group__attribute__permissions}) as udm_events__security_result__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__resource__attribute__permissions {
    view_label: "Udm Events: Security Result About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__resource__attribute__permissions}) as udm_events__security_result__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: Security Result About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.phone_numbers}) as udm_events__security_result__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__observer__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Observer User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__observer__user_management_chain.attribute__permissions}) as udm_events__observer__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__hardware {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Hardware"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__hardware}) as udm_events__extensions__vulns__vulnerabilities__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__phone_numbers}) as udm_events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Security Result About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__vpc__attribute__permissions}) as udm_events__security_result__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__principal__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Principal User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__principal__user_management_chain.attribute__permissions}) as udm_events__principal__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__software {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Software"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__software}) as udm_events__extensions__vulns__vulnerabilities__about__asset__software ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__email_addresses {
    view_label: "Udm Events: Security Result About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.email_addresses}) as udm_events__security_result__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__process_ancestors__command_line_history {
    view_label: "Udm Events: Security Result About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__process_ancestors.command_line_history}) as udm_events__security_result__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Ancestors"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__process_ancestors}) as udm_events__extensions__vulns__vulnerabilities__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: udm_events__intermediary__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Intermediary User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__intermediary__user_management_chain.attribute__permissions}) as udm_events__intermediary__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: Security Result About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.group_identifiers}) as udm_events__security_result__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__investigation__comments {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Investigation Comments"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__investigation__comments}) as udm_events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__group_identifiers}) as udm_events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: Security Result About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result.about__cloud__project__attribute__permissions}) as udm_events__security_result__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__time_off {
    view_label: "Udm Events: Security Result About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.time_off}) as udm_events__security_result__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__roles}) as udm_events__security_result__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__labels}) as udm_events__security_result__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__time_off {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__time_off}) as udm_events__extensions__vulns__vulnerabilities__about__user__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user_management_chain}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__process__command_line_history}) as udm_events__extensions__vulns__vulnerabilities__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__security_result__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Security Result About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__security_result__about__user_management_chain.attribute__permissions}) as udm_events__security_result__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__software__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__asset__software.permissions}) as udm_events__extensions__vulns__vulnerabilities__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__user__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.department}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__asset__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__group__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__group__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__resource__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.phone_numbers}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.email_addresses}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__process_ancestors.command_line_history}) as udm_events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.group_identifiers}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.time_off}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__roles}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__labels}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions {
    view_label: "Udm Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${udm_events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__permissions}) as udm_events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
}

explore: ingestion_metrics {
  join: ingestion_metrics__buckets {
    view_label: "Ingestion Metrics: Buckets"
    sql: LEFT JOIN UNNEST(${ingestion_metrics.buckets}) as ingestion_metrics__buckets ;;
    relationship: one_to_many
  }
  join: ingestion_metrics__bucketer_lower_bounds {
    view_label: "Ingestion Metrics: Bucketer Lower Bounds"
    sql: LEFT JOIN UNNEST(${ingestion_metrics.bucketer_lower_bounds}) as ingestion_metrics__bucketer_lower_bounds ;;
    relationship: one_to_many
  }
}

explore: udm_events_aggregates {}

explore: events {
  join: events__about {
    view_label: "Events: About"
    sql: LEFT JOIN UNNEST(${events.about}) as events__about ;;
    relationship: one_to_many
  }
  join: events__src__ip {
    view_label: "Events: Src Ip"
    sql: LEFT JOIN UNNEST(${events.src__ip}) as events__src__ip ;;
    relationship: one_to_many
  }
  join: events__src__mac {
    view_label: "Events: Src Mac"
    sql: LEFT JOIN UNNEST(${events.src__mac}) as events__src__mac ;;
    relationship: one_to_many
  }
  join: events__about__ip {
    view_label: "Events: About Ip"
    sql: LEFT JOIN UNNEST(${events__about.ip}) as events__about__ip ;;
    relationship: one_to_many
  }
  join: events__about__mac {
    view_label: "Events: About Mac"
    sql: LEFT JOIN UNNEST(${events__about.mac}) as events__about__mac ;;
    relationship: one_to_many
  }
  join: events__target__ip {
    view_label: "Events: Target Ip"
    sql: LEFT JOIN UNNEST(${events.target__ip}) as events__target__ip ;;
    relationship: one_to_many
  }
  join: events__src__nat_ip {
    view_label: "Events: Src Nat Ip"
    sql: LEFT JOIN UNNEST(${events.src__nat_ip}) as events__src__nat_ip ;;
    relationship: one_to_many
  }
  join: events__target__mac {
    view_label: "Events: Target Mac"
    sql: LEFT JOIN UNNEST(${events.target__mac}) as events__target__mac ;;
    relationship: one_to_many
  }
  join: events__observer__ip {
    view_label: "Events: Observer Ip"
    sql: LEFT JOIN UNNEST(${events.observer__ip}) as events__observer__ip ;;
    relationship: one_to_many
  }
  join: events__principal__ip {
    view_label: "Events: Principal Ip"
    sql: LEFT JOIN UNNEST(${events.principal__ip}) as events__principal__ip ;;
    relationship: one_to_many
  }
  join: events__observer__mac {
    view_label: "Events: Observer Mac"
    sql: LEFT JOIN UNNEST(${events.observer__mac}) as events__observer__mac ;;
    relationship: one_to_many
  }
  join: events__src__asset__ip {
    view_label: "Events: Src Asset Ip"
    sql: LEFT JOIN UNNEST(${events.src__asset__ip}) as events__src__asset__ip ;;
    relationship: one_to_many
  }
  join: events__about__nat_ip {
    view_label: "Events: About Nat Ip"
    sql: LEFT JOIN UNNEST(${events__about.nat_ip}) as events__about__nat_ip ;;
    relationship: one_to_many
  }
  join: events__intermediary {
    view_label: "Events: Intermediary"
    sql: LEFT JOIN UNNEST(${events.intermediary}) as events__intermediary ;;
    relationship: one_to_many
  }
  join: events__principal__mac {
    view_label: "Events: Principal Mac"
    sql: LEFT JOIN UNNEST(${events.principal__mac}) as events__principal__mac ;;
    relationship: one_to_many
  }
  join: events__src__file__tags {
    view_label: "Events: Src File Tags"
    sql: LEFT JOIN UNNEST(${events.src__file__tags}) as events__src__file__tags ;;
    relationship: one_to_many
  }
  join: events__src__asset__mac {
    view_label: "Events: Src Asset Mac"
    sql: LEFT JOIN UNNEST(${events.src__asset__mac}) as events__src__asset__mac ;;
    relationship: one_to_many
  }
  join: events__target__nat_ip {
    view_label: "Events: Target Nat Ip"
    sql: LEFT JOIN UNNEST(${events.target__nat_ip}) as events__target__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__file__names {
    view_label: "Events: Src File Names"
    sql: LEFT JOIN UNNEST(${events.src__file__names}) as events__src__file__names ;;
    relationship: one_to_many
  }
  join: events__src__labels {
    view_label: "Events: Src Labels"
    sql: LEFT JOIN UNNEST(${events.src__labels}) as events__src__labels ;;
    relationship: one_to_many
  }
  join: events__about__asset__ip {
    view_label: "Events: About Asset Ip"
    sql: LEFT JOIN UNNEST(${events__about.asset__ip}) as events__about__asset__ip ;;
    relationship: one_to_many
  }
  join: events__observer__nat_ip {
    view_label: "Events: Observer Nat Ip"
    sql: LEFT JOIN UNNEST(${events.observer__nat_ip}) as events__observer__nat_ip ;;
    relationship: one_to_many
  }
  join: events__about__file__tags {
    view_label: "Events: About File Tags"
    sql: LEFT JOIN UNNEST(${events__about.file__tags}) as events__about__file__tags ;;
    relationship: one_to_many
  }
  join: events__about__asset__mac {
    view_label: "Events: About Asset Mac"
    sql: LEFT JOIN UNNEST(${events__about.asset__mac}) as events__about__asset__mac ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip {
    view_label: "Events: Intermediary Ip"
    sql: LEFT JOIN UNNEST(${events__intermediary.ip}) as events__intermediary__ip ;;
    relationship: one_to_many
  }
  join: events__security_result {
    view_label: "Events: Security Result"
    sql: LEFT JOIN UNNEST(${events.security_result}) as events__security_result ;;
    relationship: one_to_many
  }
  join: events__target__asset__ip {
    view_label: "Events: Target Asset Ip"
    sql: LEFT JOIN UNNEST(${events.target__asset__ip}) as events__target__asset__ip ;;
    relationship: one_to_many
  }
  join: events__principal__nat_ip {
    view_label: "Events: Principal Nat Ip"
    sql: LEFT JOIN UNNEST(${events.principal__nat_ip}) as events__principal__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__asset__nat_ip {
    view_label: "Events: Src Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events.src__asset__nat_ip}) as events__src__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__about__file__names {
    view_label: "Events: About File Names"
    sql: LEFT JOIN UNNEST(${events__about.file__names}) as events__about__file__names ;;
    relationship: one_to_many
  }
  join: events__about__labels {
    view_label: "Events: About Labels"
    sql: LEFT JOIN UNNEST(${events__about.labels}) as events__about__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__mac {
    view_label: "Events: Intermediary Mac"
    sql: LEFT JOIN UNNEST(${events__intermediary.mac}) as events__intermediary__mac ;;
    relationship: one_to_many
  }
  join: events__target__file__tags {
    view_label: "Events: Target File Tags"
    sql: LEFT JOIN UNNEST(${events.target__file__tags}) as events__target__file__tags ;;
    relationship: one_to_many
  }
  join: events__target__asset__mac {
    view_label: "Events: Target Asset Mac"
    sql: LEFT JOIN UNNEST(${events.target__asset__mac}) as events__target__asset__mac ;;
    relationship: one_to_many
  }
  join: events__network__email__cc {
    view_label: "Events: Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.network__email__cc}) as events__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__observer__asset__ip {
    view_label: "Events: Observer Asset Ip"
    sql: LEFT JOIN UNNEST(${events.observer__asset__ip}) as events__observer__asset__ip ;;
    relationship: one_to_many
  }
  join: events__target__file__names {
    view_label: "Events: Target File Names"
    sql: LEFT JOIN UNNEST(${events.target__file__names}) as events__target__file__names ;;
    relationship: one_to_many
  }
  join: events__target__labels {
    view_label: "Events: Target Labels"
    sql: LEFT JOIN UNNEST(${events.target__labels}) as events__target__labels ;;
    relationship: one_to_many
  }
  join: events__network__email__bcc {
    view_label: "Events: Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.network__email__bcc}) as events__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__principal__asset__ip {
    view_label: "Events: Principal Asset Ip"
    sql: LEFT JOIN UNNEST(${events.principal__asset__ip}) as events__principal__asset__ip ;;
    relationship: one_to_many
  }
  join: events__observer__file__tags {
    view_label: "Events: Observer File Tags"
    sql: LEFT JOIN UNNEST(${events.observer__file__tags}) as events__observer__file__tags ;;
    relationship: one_to_many
  }
  join: events__observer__asset__mac {
    view_label: "Events: Observer Asset Mac"
    sql: LEFT JOIN UNNEST(${events.observer__asset__mac}) as events__observer__asset__mac ;;
    relationship: one_to_many
  }
  join: events__about__asset__nat_ip {
    view_label: "Events: About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events__about.asset__nat_ip}) as events__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__network__email__to {
    view_label: "Events: Network Email To"
    sql: LEFT JOIN UNNEST(${events.network__email__to}) as events__network__email__to ;;
    relationship: one_to_many
  }
  join: events__principal__file__tags {
    view_label: "Events: Principal File Tags"
    sql: LEFT JOIN UNNEST(${events.principal__file__tags}) as events__principal__file__tags ;;
    relationship: one_to_many
  }
  join: events__principal__asset__mac {
    view_label: "Events: Principal Asset Mac"
    sql: LEFT JOIN UNNEST(${events.principal__asset__mac}) as events__principal__asset__mac ;;
    relationship: one_to_many
  }
  join: events__observer__file__names {
    view_label: "Events: Observer File Names"
    sql: LEFT JOIN UNNEST(${events.observer__file__names}) as events__observer__file__names ;;
    relationship: one_to_many
  }
  join: events__observer__labels {
    view_label: "Events: Observer Labels"
    sql: LEFT JOIN UNNEST(${events.observer__labels}) as events__observer__labels ;;
    relationship: one_to_many
  }
  join: events__src__user__department {
    view_label: "Events: Src User Department"
    sql: LEFT JOIN UNNEST(${events.src__user__department}) as events__src__user__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__nat_ip {
    view_label: "Events: Intermediary Nat Ip"
    sql: LEFT JOIN UNNEST(${events__intermediary.nat_ip}) as events__intermediary__nat_ip ;;
    relationship: one_to_many
  }
  join: events__target__asset__nat_ip {
    view_label: "Events: Target Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events.target__asset__nat_ip}) as events__target__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__principal__file__names {
    view_label: "Events: Principal File Names"
    sql: LEFT JOIN UNNEST(${events.principal__file__names}) as events__principal__file__names ;;
    relationship: one_to_many
  }
  join: events__principal__labels {
    view_label: "Events: Principal Labels"
    sql: LEFT JOIN UNNEST(${events.principal__labels}) as events__principal__labels ;;
    relationship: one_to_many
  }
  join: events__src__network__email__cc {
    view_label: "Events: Src Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.src__network__email__cc}) as events__src__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__src__ip_location {
    view_label: "Events: Src Ip Location"
    sql: LEFT JOIN UNNEST(${events.src__ip_location}) as events__src__ip_location ;;
    relationship: one_to_many
  }
  join: events__src__asset__labels {
    view_label: "Events: Src Asset Labels"
    sql: LEFT JOIN UNNEST(${events.src__asset__labels}) as events__src__asset__labels ;;
    relationship: one_to_many
  }
  join: events__network__smtp__rcpt_to {
    view_label: "Events: Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.network__smtp__rcpt_to}) as events__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__observer__asset__nat_ip {
    view_label: "Events: Observer Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events.observer__asset__nat_ip}) as events__observer__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__network__email__bcc {
    view_label: "Events: Src Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.src__network__email__bcc}) as events__src__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__src__file__embedded_ips {
    view_label: "Events: Src File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.src__file__embedded_ips}) as events__src__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__src__process__file__tags {
    view_label: "Events: Src Process File Tags"
    sql: LEFT JOIN UNNEST(${events.src__process__file__tags}) as events__src__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__additional__fields {
    view_label: "Events: Additional Fields"
    sql: LEFT JOIN UNNEST(${events.additional__fields}) as events__additional__fields ;;
    relationship: one_to_many
  }
  join: events__about__user__department {
    view_label: "Events: About User Department"
    sql: LEFT JOIN UNNEST(${events__about.user__department}) as events__about__user__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__ip {
    view_label: "Events: Intermediary Asset Ip"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__ip}) as events__intermediary__asset__ip ;;
    relationship: one_to_many
  }
  join: events__network__email__subject {
    view_label: "Events: Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.network__email__subject}) as events__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__principal__asset__nat_ip {
    view_label: "Events: Principal Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events.principal__asset__nat_ip}) as events__principal__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact {
    view_label: "Events: Src Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events.src__ip_geo_artifact}) as events__src__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__src__network__email__to {
    view_label: "Events: Src Network Email To"
    sql: LEFT JOIN UNNEST(${events.src__network__email__to}) as events__src__network__email__to ;;
    relationship: one_to_many
  }
  join: events__src__file__embedded_urls {
    view_label: "Events: Src File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.src__file__embedded_urls}) as events__src__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__src__process__file__names {
    view_label: "Events: Src Process File Names"
    sql: LEFT JOIN UNNEST(${events.src__process__file__names}) as events__src__process__file__names ;;
    relationship: one_to_many
  }
  join: events__src__domain__name_server {
    view_label: "Events: Src Domain Name Server"
    sql: LEFT JOIN UNNEST(${events.src__domain__name_server}) as events__src__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__src__asset__hardware {
    view_label: "Events: Src Asset Hardware"
    sql: LEFT JOIN UNNEST(${events.src__asset__hardware}) as events__src__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__src__user__phone_numbers {
    view_label: "Events: Src User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__user__phone_numbers}) as events__src__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__network__email__cc {
    view_label: "Events: About Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__about.network__email__cc}) as events__about__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__about__ip_location {
    view_label: "Events: About Ip Location"
    sql: LEFT JOIN UNNEST(${events__about.ip_location}) as events__about__ip_location ;;
    relationship: one_to_many
  }
  join: events__about__asset__labels {
    view_label: "Events: About Asset Labels"
    sql: LEFT JOIN UNNEST(${events__about.asset__labels}) as events__about__asset__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__tags {
    view_label: "Events: Intermediary File Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__tags}) as events__intermediary__file__tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__mac {
    view_label: "Events: Intermediary Asset Mac"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__mac}) as events__intermediary__asset__mac ;;
    relationship: one_to_many
  }
  join: events__security_result__action {
    view_label: "Events: Security Result Action"
    sql: LEFT JOIN UNNEST(${events__security_result.action}) as events__security_result__action ;;
    relationship: one_to_many
  }
  join: events__target__user__department {
    view_label: "Events: Target User Department"
    sql: LEFT JOIN UNNEST(${events.target__user__department}) as events__target__user__department ;;
    relationship: one_to_many
  }
  join: events__metadata__tags__tenant_id {
    view_label: "Events: Metadata Tags Tenant Id"
    sql: LEFT JOIN UNNEST(${events.metadata__tags__tenant_id}) as events__metadata__tags__tenant_id ;;
    relationship: one_to_many
  }
  join: events__src__asset__software {
    view_label: "Events: Src Asset Software"
    sql: LEFT JOIN UNNEST(${events.src__asset__software}) as events__src__asset__software ;;
    relationship: one_to_many
  }
  join: events__about__network__email__bcc {
    view_label: "Events: About Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__about.network__email__bcc}) as events__about__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__about__file__embedded_ips {
    view_label: "Events: About File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__about.file__embedded_ips}) as events__about__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__about__process__file__tags {
    view_label: "Events: About Process File Tags"
    sql: LEFT JOIN UNNEST(${events__about.process__file__tags}) as events__about__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__names {
    view_label: "Events: Intermediary File Names"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__names}) as events__intermediary__file__names ;;
    relationship: one_to_many
  }
  join: events__intermediary__labels {
    view_label: "Events: Intermediary Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.labels}) as events__intermediary__labels ;;
    relationship: one_to_many
  }
  join: events__target__network__email__cc {
    view_label: "Events: Target Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.target__network__email__cc}) as events__target__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__target__ip_location {
    view_label: "Events: Target Ip Location"
    sql: LEFT JOIN UNNEST(${events.target__ip_location}) as events__target__ip_location ;;
    relationship: one_to_many
  }
  join: events__target__asset__labels {
    view_label: "Events: Target Asset Labels"
    sql: LEFT JOIN UNNEST(${events.target__asset__labels}) as events__target__asset__labels ;;
    relationship: one_to_many
  }
  join: events__network__dns__answers {
    view_label: "Events: Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.network__dns__answers}) as events__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__observer__user__department {
    view_label: "Events: Observer User Department"
    sql: LEFT JOIN UNNEST(${events.observer__user__department}) as events__observer__user__department ;;
    relationship: one_to_many
  }
  join: events__src__network__smtp__rcpt_to {
    view_label: "Events: Src Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.src__network__smtp__rcpt_to}) as events__src__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__src__user__email_addresses {
    view_label: "Events: Src User Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__user__email_addresses}) as events__src__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact {
    view_label: "Events: About Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events__about.ip_geo_artifact}) as events__about__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__about__network__email__to {
    view_label: "Events: About Network Email To"
    sql: LEFT JOIN UNNEST(${events__about.network__email__to}) as events__about__network__email__to ;;
    relationship: one_to_many
  }
  join: events__about__file__embedded_urls {
    view_label: "Events: About File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__about.file__embedded_urls}) as events__about__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__about__process__file__names {
    view_label: "Events: About Process File Names"
    sql: LEFT JOIN UNNEST(${events__about.process__file__names}) as events__about__process__file__names ;;
    relationship: one_to_many
  }
  join: events__about__domain__name_server {
    view_label: "Events: About Domain Name Server"
    sql: LEFT JOIN UNNEST(${events__about.domain__name_server}) as events__about__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__about__asset__hardware {
    view_label: "Events: About Asset Hardware"
    sql: LEFT JOIN UNNEST(${events__about.asset__hardware}) as events__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__about__user__phone_numbers {
    view_label: "Events: About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.user__phone_numbers}) as events__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip {
    view_label: "Events: Security Result About Ip"
    sql: LEFT JOIN UNNEST(${events__security_result.about__ip}) as events__security_result__about__ip ;;
    relationship: one_to_many
  }
  join: events__security_result__category {
    view_label: "Events: Security Result Category"
    sql: LEFT JOIN UNNEST(${events__security_result.category}) as events__security_result__category ;;
    relationship: one_to_many
  }
  join: events__target__network__email__bcc {
    view_label: "Events: Target Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.target__network__email__bcc}) as events__target__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__target__file__embedded_ips {
    view_label: "Events: Target File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.target__file__embedded_ips}) as events__target__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__target__process__file__tags {
    view_label: "Events: Target Process File Tags"
    sql: LEFT JOIN UNNEST(${events.target__process__file__tags}) as events__target__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__principal__user__department {
    view_label: "Events: Principal User Department"
    sql: LEFT JOIN UNNEST(${events.principal__user__department}) as events__principal__user__department ;;
    relationship: one_to_many
  }
  join: events__observer__network__email__cc {
    view_label: "Events: Observer Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.observer__network__email__cc}) as events__observer__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__observer__ip_location {
    view_label: "Events: Observer Ip Location"
    sql: LEFT JOIN UNNEST(${events.observer__ip_location}) as events__observer__ip_location ;;
    relationship: one_to_many
  }
  join: events__observer__asset__labels {
    view_label: "Events: Observer Asset Labels"
    sql: LEFT JOIN UNNEST(${events.observer__asset__labels}) as events__observer__asset__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__auth__mechanism {
    view_label: "Events: Extensions Auth Mechanism"
    sql: LEFT JOIN UNNEST(${events.extensions__auth__mechanism}) as events__extensions__auth__mechanism ;;
    relationship: one_to_many
  }
  join: events__src__network__email__subject {
    view_label: "Events: Src Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.src__network__email__subject}) as events__src__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__src__file__embedded_domains {
    view_label: "Events: Src File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.src__file__embedded_domains}) as events__src__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__src__resource_ancestors {
    view_label: "Events: Src Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events.src__resource_ancestors}) as events__src__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors {
    view_label: "Events: Src Process Ancestors"
    sql: LEFT JOIN UNNEST(${events.src__process_ancestors}) as events__src__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__about__asset__software {
    view_label: "Events: About Asset Software"
    sql: LEFT JOIN UNNEST(${events__about.asset__software}) as events__about__asset__software ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__nat_ip {
    view_label: "Events: Intermediary Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__nat_ip}) as events__intermediary__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__security_result__about__mac {
    view_label: "Events: Security Result About Mac"
    sql: LEFT JOIN UNNEST(${events__security_result.about__mac}) as events__security_result__about__mac ;;
    relationship: one_to_many
  }
  join: events__security_result__campaigns {
    view_label: "Events: Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__security_result.campaigns}) as events__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact {
    view_label: "Events: Target Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events.target__ip_geo_artifact}) as events__target__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__target__network__email__to {
    view_label: "Events: Target Network Email To"
    sql: LEFT JOIN UNNEST(${events.target__network__email__to}) as events__target__network__email__to ;;
    relationship: one_to_many
  }
  join: events__target__file__embedded_urls {
    view_label: "Events: Target File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.target__file__embedded_urls}) as events__target__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__target__process__file__names {
    view_label: "Events: Target Process File Names"
    sql: LEFT JOIN UNNEST(${events.target__process__file__names}) as events__target__process__file__names ;;
    relationship: one_to_many
  }
  join: events__target__domain__name_server {
    view_label: "Events: Target Domain Name Server"
    sql: LEFT JOIN UNNEST(${events.target__domain__name_server}) as events__target__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__target__asset__hardware {
    view_label: "Events: Target Asset Hardware"
    sql: LEFT JOIN UNNEST(${events.target__asset__hardware}) as events__target__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__target__user__phone_numbers {
    view_label: "Events: Target User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__user__phone_numbers}) as events__target__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__network__dns__authority {
    view_label: "Events: Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.network__dns__authority}) as events__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__network__dhcp__options {
    view_label: "Events: Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.network__dhcp__options}) as events__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__principal__network__email__cc {
    view_label: "Events: Principal Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.principal__network__email__cc}) as events__principal__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__principal__ip_location {
    view_label: "Events: Principal Ip Location"
    sql: LEFT JOIN UNNEST(${events.principal__ip_location}) as events__principal__ip_location ;;
    relationship: one_to_many
  }
  join: events__principal__asset__labels {
    view_label: "Events: Principal Asset Labels"
    sql: LEFT JOIN UNNEST(${events.principal__asset__labels}) as events__principal__asset__labels ;;
    relationship: one_to_many
  }
  join: events__observer__network__email__bcc {
    view_label: "Events: Observer Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.observer__network__email__bcc}) as events__observer__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__observer__file__embedded_ips {
    view_label: "Events: Observer File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.observer__file__embedded_ips}) as events__observer__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__tags {
    view_label: "Events: Observer Process File Tags"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__tags}) as events__observer__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__src__file__capabilities_tags {
    view_label: "Events: Src File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.src__file__capabilities_tags}) as events__src__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__src__security_result__action {
    view_label: "Events: Src Security Result Action"
    sql: LEFT JOIN UNNEST(${events.src__security_result__action}) as events__src__security_result__action ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__department {
    view_label: "Events: Src Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__department}) as events__src__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__department {
    view_label: "Events: Src Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__department}) as events__src__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__src__investigation__comments {
    view_label: "Events: Src Investigation Comments"
    sql: LEFT JOIN UNNEST(${events.src__investigation__comments}) as events__src__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__src__user__group_identifiers {
    view_label: "Events: Src User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__user__group_identifiers}) as events__src__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__network__smtp__rcpt_to {
    view_label: "Events: About Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__about.network__smtp__rcpt_to}) as events__about__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__about__user__email_addresses {
    view_label: "Events: About User Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.user__email_addresses}) as events__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__asset__software {
    view_label: "Events: Target Asset Software"
    sql: LEFT JOIN UNNEST(${events.target__asset__software}) as events__target__asset__software ;;
    relationship: one_to_many
  }
  join: events__network__dns__additional {
    view_label: "Events: Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.network__dns__additional}) as events__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__network__dns__questions {
    view_label: "Events: Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.network__dns__questions}) as events__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__principal__network__email__bcc {
    view_label: "Events: Principal Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.principal__network__email__bcc}) as events__principal__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__principal__file__embedded_ips {
    view_label: "Events: Principal File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.principal__file__embedded_ips}) as events__principal__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__tags {
    view_label: "Events: Principal Process File Tags"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__tags}) as events__principal__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact {
    view_label: "Events: Observer Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events.observer__ip_geo_artifact}) as events__observer__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__observer__network__email__to {
    view_label: "Events: Observer Network Email To"
    sql: LEFT JOIN UNNEST(${events.observer__network__email__to}) as events__observer__network__email__to ;;
    relationship: one_to_many
  }
  join: events__observer__file__embedded_urls {
    view_label: "Events: Observer File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.observer__file__embedded_urls}) as events__observer__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__names {
    view_label: "Events: Observer Process File Names"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__names}) as events__observer__process__file__names ;;
    relationship: one_to_many
  }
  join: events__observer__domain__name_server {
    view_label: "Events: Observer Domain Name Server"
    sql: LEFT JOIN UNNEST(${events.observer__domain__name_server}) as events__observer__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__observer__asset__hardware {
    view_label: "Events: Observer Asset Hardware"
    sql: LEFT JOIN UNNEST(${events.observer__asset__hardware}) as events__observer__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__observer__user__phone_numbers {
    view_label: "Events: Observer User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__user__phone_numbers}) as events__observer__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__network__dns__answers {
    view_label: "Events: Src Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.src__network__dns__answers}) as events__src__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__src__group__email_addresses {
    view_label: "Events: Src Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__group__email_addresses}) as events__src__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__security_result {
    view_label: "Events: Src Security Result"
    sql: LEFT JOIN UNNEST(${events.src__security_result}) as events__src__security_result ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__department {
    view_label: "Events: Src Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__department}) as events__src__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__about__network__email__subject {
    view_label: "Events: About Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__about.network__email__subject}) as events__about__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__about__file__embedded_domains {
    view_label: "Events: About File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__about.file__embedded_domains}) as events__about__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__about__resource_ancestors {
    view_label: "Events: About Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events__about.resource_ancestors}) as events__about__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors {
    view_label: "Events: About Process Ancestors"
    sql: LEFT JOIN UNNEST(${events__about.process_ancestors}) as events__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__target__network__smtp__rcpt_to {
    view_label: "Events: Target Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.target__network__smtp__rcpt_to}) as events__target__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__target__user__email_addresses {
    view_label: "Events: Target User Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__user__email_addresses}) as events__target__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact {
    view_label: "Events: Principal Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events.principal__ip_geo_artifact}) as events__principal__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__principal__network__email__to {
    view_label: "Events: Principal Network Email To"
    sql: LEFT JOIN UNNEST(${events.principal__network__email__to}) as events__principal__network__email__to ;;
    relationship: one_to_many
  }
  join: events__principal__file__embedded_urls {
    view_label: "Events: Principal File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.principal__file__embedded_urls}) as events__principal__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__names {
    view_label: "Events: Principal Process File Names"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__names}) as events__principal__process__file__names ;;
    relationship: one_to_many
  }
  join: events__principal__domain__name_server {
    view_label: "Events: Principal Domain Name Server"
    sql: LEFT JOIN UNNEST(${events.principal__domain__name_server}) as events__principal__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__principal__asset__hardware {
    view_label: "Events: Principal Asset Hardware"
    sql: LEFT JOIN UNNEST(${events.principal__asset__hardware}) as events__principal__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__principal__user__phone_numbers {
    view_label: "Events: Principal User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__user__phone_numbers}) as events__principal__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__asset__software {
    view_label: "Events: Observer Asset Software"
    sql: LEFT JOIN UNNEST(${events.observer__asset__software}) as events__observer__asset__software ;;
    relationship: one_to_many
  }
  join: events__src__security_result__category {
    view_label: "Events: Src Security Result Category"
    sql: LEFT JOIN UNNEST(${events__src__security_result.category}) as events__src__security_result__category ;;
    relationship: one_to_many
  }
  join: events__about__file__capabilities_tags {
    view_label: "Events: About File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__about.file__capabilities_tags}) as events__about__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__about__security_result__action {
    view_label: "Events: About Security Result Action"
    sql: LEFT JOIN UNNEST(${events__about.security_result__action}) as events__about__security_result__action ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__department {
    view_label: "Events: About Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__department}) as events__about__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__department {
    view_label: "Events: About Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__department}) as events__about__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__about__investigation__comments {
    view_label: "Events: About Investigation Comments"
    sql: LEFT JOIN UNNEST(${events__about.investigation__comments}) as events__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__about__user__group_identifiers {
    view_label: "Events: About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.user__group_identifiers}) as events__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__department {
    view_label: "Events: Intermediary User Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__department}) as events__intermediary__user__department ;;
    relationship: one_to_many
  }
  join: events__security_result__about__nat_ip {
    view_label: "Events: Security Result About Nat Ip"
    sql: LEFT JOIN UNNEST(${events__security_result.about__nat_ip}) as events__security_result__about__nat_ip ;;
    relationship: one_to_many
  }
  join: events__security_result__outcomes {
    view_label: "Events: Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__security_result.outcomes}) as events__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__target__network__email__subject {
    view_label: "Events: Target Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.target__network__email__subject}) as events__target__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__target__file__embedded_domains {
    view_label: "Events: Target File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.target__file__embedded_domains}) as events__target__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__target__resource_ancestors {
    view_label: "Events: Target Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events.target__resource_ancestors}) as events__target__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors {
    view_label: "Events: Target Process Ancestors"
    sql: LEFT JOIN UNNEST(${events.target__process_ancestors}) as events__target__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__network__smtp__server_response {
    view_label: "Events: Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.network__smtp__server_response}) as events__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__principal__asset__software {
    view_label: "Events: Principal Asset Software"
    sql: LEFT JOIN UNNEST(${events.principal__asset__software}) as events__principal__asset__software ;;
    relationship: one_to_many
  }
  join: events__observer__network__smtp__rcpt_to {
    view_label: "Events: Observer Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.observer__network__smtp__rcpt_to}) as events__observer__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__observer__user__email_addresses {
    view_label: "Events: Observer User Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__user__email_addresses}) as events__observer__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__metadata__ingestion_labels {
    view_label: "Events: Metadata Ingestion Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__ingestion_labels}) as events__metadata__ingestion_labels ;;
    relationship: one_to_many
  }
  join: events__src__network__dns__authority {
    view_label: "Events: Src Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.src__network__dns__authority}) as events__src__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__src__network__dhcp__options {
    view_label: "Events: Src Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.src__network__dhcp__options}) as events__src__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__email__cc {
    view_label: "Events: Src Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__email__cc}) as events__src__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__section {
    view_label: "Events: Src File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__section}) as events__src__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__src__process__file__embedded_ips {
    view_label: "Events: Src Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.src__process__file__embedded_ips}) as events__src__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__src__security_result__campaigns {
    view_label: "Events: Src Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__src__security_result.campaigns}) as events__src__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__phone_numbers {
    view_label: "Events: Src Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__phone_numbers}) as events__src__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__department {
    view_label: "Events: Src Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__department}) as events__src__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__phone_numbers {
    view_label: "Events: Src Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__phone_numbers}) as events__src__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__user__time_off {
    view_label: "Events: Src User Time Off"
    sql: LEFT JOIN UNNEST(${events.src__user__time_off}) as events__src__user__time_off ;;
    relationship: one_to_many
  }
  join: events__src__user__attribute__roles {
    view_label: "Events: Src User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__user__attribute__roles}) as events__src__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__user__attribute__labels {
    view_label: "Events: Src User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__user__attribute__labels}) as events__src__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__network__dns__answers {
    view_label: "Events: About Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__about.network__dns__answers}) as events__about__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__about__group__email_addresses {
    view_label: "Events: About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.group__email_addresses}) as events__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__security_result {
    view_label: "Events: About Security Result"
    sql: LEFT JOIN UNNEST(${events__about.security_result}) as events__about__security_result ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__department {
    view_label: "Events: About Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__department}) as events__about__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__email__cc {
    view_label: "Events: Intermediary Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__email__cc}) as events__intermediary__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_location {
    view_label: "Events: Intermediary Ip Location"
    sql: LEFT JOIN UNNEST(${events__intermediary.ip_location}) as events__intermediary__ip_location ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__labels {
    view_label: "Events: Intermediary Asset Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__labels}) as events__intermediary__asset__labels ;;
    relationship: one_to_many
  }
  join: events__target__file__capabilities_tags {
    view_label: "Events: Target File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.target__file__capabilities_tags}) as events__target__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__target__security_result__action {
    view_label: "Events: Target Security Result Action"
    sql: LEFT JOIN UNNEST(${events.target__security_result__action}) as events__target__security_result__action ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__department {
    view_label: "Events: Target Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__department}) as events__target__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__department {
    view_label: "Events: Target Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__department}) as events__target__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__target__investigation__comments {
    view_label: "Events: Target Investigation Comments"
    sql: LEFT JOIN UNNEST(${events.target__investigation__comments}) as events__target__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__target__user__group_identifiers {
    view_label: "Events: Target User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__user__group_identifiers}) as events__target__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__network__smtp__rcpt_to {
    view_label: "Events: Principal Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.principal__network__smtp__rcpt_to}) as events__principal__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__principal__user__email_addresses {
    view_label: "Events: Principal User Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__user__email_addresses}) as events__principal__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__network__email__subject {
    view_label: "Events: Observer Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.observer__network__email__subject}) as events__observer__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__observer__file__embedded_domains {
    view_label: "Events: Observer File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.observer__file__embedded_domains}) as events__observer__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__observer__resource_ancestors {
    view_label: "Events: Observer Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events.observer__resource_ancestors}) as events__observer__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors {
    view_label: "Events: Observer Process Ancestors"
    sql: LEFT JOIN UNNEST(${events.observer__process_ancestors}) as events__observer__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__metadata__base_labels__log_types {
    view_label: "Events: Metadata Base Labels Log Types"
    sql: LEFT JOIN UNNEST(${events.metadata__base_labels__log_types}) as events__metadata__base_labels__log_types ;;
    relationship: one_to_many
  }
  join: events__src__network__dns__additional {
    view_label: "Events: Src Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.src__network__dns__additional}) as events__src__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__src__network__dns__questions {
    view_label: "Events: Src Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.src__network__dns__questions}) as events__src__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__email__bcc {
    view_label: "Events: Src Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__email__bcc}) as events__src__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__src__process__file__embedded_urls {
    view_label: "Events: Src Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.src__process__file__embedded_urls}) as events__src__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__phone_numbers {
    view_label: "Events: Src Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__phone_numbers}) as events__src__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__asset__vulnerabilities {
    view_label: "Events: Src Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events.src__asset__vulnerabilities}) as events__src__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__src__asset__attribute__roles {
    view_label: "Events: Src Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__asset__attribute__roles}) as events__src__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__asset__attribute__labels {
    view_label: "Events: Src Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__asset__attribute__labels}) as events__src__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__security_result__category {
    view_label: "Events: About Security Result Category"
    sql: LEFT JOIN UNNEST(${events__about__security_result.category}) as events__about__security_result__category ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__email__bcc {
    view_label: "Events: Intermediary Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__email__bcc}) as events__intermediary__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__embedded_ips {
    view_label: "Events: Intermediary File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__embedded_ips}) as events__intermediary__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__tags {
    view_label: "Events: Intermediary Process File Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__tags}) as events__intermediary__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__ip {
    view_label: "Events: Security Result About Asset Ip"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__ip}) as events__security_result__about__asset__ip ;;
    relationship: one_to_many
  }
  join: events__target__network__dns__answers {
    view_label: "Events: Target Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.target__network__dns__answers}) as events__target__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__target__group__email_addresses {
    view_label: "Events: Target Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__group__email_addresses}) as events__target__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__security_result {
    view_label: "Events: Target Security Result"
    sql: LEFT JOIN UNNEST(${events.target__security_result}) as events__target__security_result ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__department {
    view_label: "Events: Target Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__department}) as events__target__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__principal__network__email__subject {
    view_label: "Events: Principal Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.principal__network__email__subject}) as events__principal__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__principal__file__embedded_domains {
    view_label: "Events: Principal File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.principal__file__embedded_domains}) as events__principal__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__principal__resource_ancestors {
    view_label: "Events: Principal Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events.principal__resource_ancestors}) as events__principal__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors {
    view_label: "Events: Principal Process Ancestors"
    sql: LEFT JOIN UNNEST(${events.principal__process_ancestors}) as events__principal__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__observer__file__capabilities_tags {
    view_label: "Events: Observer File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.observer__file__capabilities_tags}) as events__observer__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__action {
    view_label: "Events: Observer Security Result Action"
    sql: LEFT JOIN UNNEST(${events.observer__security_result__action}) as events__observer__security_result__action ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__department {
    view_label: "Events: Observer Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__department}) as events__observer__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__department {
    view_label: "Events: Observer Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__department}) as events__observer__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__observer__investigation__comments {
    view_label: "Events: Observer Investigation Comments"
    sql: LEFT JOIN UNNEST(${events.observer__investigation__comments}) as events__observer__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__observer__user__group_identifiers {
    view_label: "Events: Observer User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__user__group_identifiers}) as events__observer__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__metadata__base_labels__namespaces {
    view_label: "Events: Metadata Base Labels Namespaces"
    sql: LEFT JOIN UNNEST(${events.metadata__base_labels__namespaces}) as events__metadata__base_labels__namespaces ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__email__to {
    view_label: "Events: Src Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__email__to}) as events__src__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain {
    view_label: "Events: Src User Management Chain"
    sql: LEFT JOIN UNNEST(${events.src__user_management_chain}) as events__src__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__tags {
    view_label: "Events: Src Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__tags}) as events__src__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__email_addresses {
    view_label: "Events: Src Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__email_addresses}) as events__src__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__email_addresses {
    view_label: "Events: Src Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__email_addresses}) as events__src__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__network__dns__authority {
    view_label: "Events: About Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__about.network__dns__authority}) as events__about__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__about__network__dhcp__options {
    view_label: "Events: About Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__about.network__dhcp__options}) as events__about__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__email__cc {
    view_label: "Events: About Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__email__cc}) as events__about__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__section {
    view_label: "Events: About File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__section}) as events__about__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__about__process__file__embedded_ips {
    view_label: "Events: About Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__about.process__file__embedded_ips}) as events__about__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__about__security_result__campaigns {
    view_label: "Events: About Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__about__security_result.campaigns}) as events__about__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__phone_numbers {
    view_label: "Events: About Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__phone_numbers}) as events__about__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__department {
    view_label: "Events: About Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__department}) as events__about__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__phone_numbers {
    view_label: "Events: About Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__phone_numbers}) as events__about__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__user__time_off {
    view_label: "Events: About User Time Off"
    sql: LEFT JOIN UNNEST(${events__about.user__time_off}) as events__about__user__time_off ;;
    relationship: one_to_many
  }
  join: events__about__user__attribute__roles {
    view_label: "Events: About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.user__attribute__roles}) as events__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__user__attribute__labels {
    view_label: "Events: About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.user__attribute__labels}) as events__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact {
    view_label: "Events: Intermediary Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events__intermediary.ip_geo_artifact}) as events__intermediary__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__email__to {
    view_label: "Events: Intermediary Network Email To"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__email__to}) as events__intermediary__network__email__to ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__embedded_urls {
    view_label: "Events: Intermediary File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__embedded_urls}) as events__intermediary__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__names {
    view_label: "Events: Intermediary Process File Names"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__names}) as events__intermediary__process__file__names ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__name_server {
    view_label: "Events: Intermediary Domain Name Server"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__name_server}) as events__intermediary__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__hardware {
    view_label: "Events: Intermediary Asset Hardware"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__hardware}) as events__intermediary__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__phone_numbers {
    view_label: "Events: Intermediary User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__phone_numbers}) as events__intermediary__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__associations {
    view_label: "Events: Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__security_result.associations}) as events__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__tags {
    view_label: "Events: Security Result About File Tags"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__tags}) as events__security_result__about__file__tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__mac {
    view_label: "Events: Security Result About Asset Mac"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__mac}) as events__security_result__about__asset__mac ;;
    relationship: one_to_many
  }
  join: events__security_result__rule_labels {
    view_label: "Events: Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.rule_labels}) as events__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__target__security_result__category {
    view_label: "Events: Target Security Result Category"
    sql: LEFT JOIN UNNEST(${events__target__security_result.category}) as events__target__security_result__category ;;
    relationship: one_to_many
  }
  join: events__principal__file__capabilities_tags {
    view_label: "Events: Principal File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.principal__file__capabilities_tags}) as events__principal__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__action {
    view_label: "Events: Principal Security Result Action"
    sql: LEFT JOIN UNNEST(${events.principal__security_result__action}) as events__principal__security_result__action ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__department {
    view_label: "Events: Principal Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__department}) as events__principal__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__department {
    view_label: "Events: Principal Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__department}) as events__principal__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__principal__investigation__comments {
    view_label: "Events: Principal Investigation Comments"
    sql: LEFT JOIN UNNEST(${events.principal__investigation__comments}) as events__principal__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__principal__user__group_identifiers {
    view_label: "Events: Principal User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__user__group_identifiers}) as events__principal__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__network__dns__answers {
    view_label: "Events: Observer Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.observer__network__dns__answers}) as events__observer__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__observer__group__email_addresses {
    view_label: "Events: Observer Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__group__email_addresses}) as events__observer__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__security_result {
    view_label: "Events: Observer Security Result"
    sql: LEFT JOIN UNNEST(${events.observer__security_result}) as events__observer__security_result ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__department {
    view_label: "Events: Observer Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__department}) as events__observer__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__src__network__smtp__server_response {
    view_label: "Events: Src Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.src__network__smtp__server_response}) as events__src__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__imports {
    view_label: "Events: Src File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__imports}) as events__src__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__src__group__attribute__roles {
    view_label: "Events: Src Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__group__attribute__roles}) as events__src__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__group__attribute__labels {
    view_label: "Events: Src Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__group__attribute__labels}) as events__src__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__process__command_line_history {
    view_label: "Events: Src Process Command Line History"
    sql: LEFT JOIN UNNEST(${events.src__process__command_line_history}) as events__src__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__src__security_result__outcomes {
    view_label: "Events: Src Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__src__security_result.outcomes}) as events__src__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__names {
    view_label: "Events: Src Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__names}) as events__src__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__email_addresses {
    view_label: "Events: Src Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__email_addresses}) as events__src__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__phone_numbers {
    view_label: "Events: Src Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__phone_numbers}) as events__src__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__department {
    view_label: "Events: Src Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__department}) as events__src__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__about__network__dns__additional {
    view_label: "Events: About Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__about.network__dns__additional}) as events__about__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__about__network__dns__questions {
    view_label: "Events: About Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__about.network__dns__questions}) as events__about__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__email__bcc {
    view_label: "Events: About Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__email__bcc}) as events__about__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__about__process__file__embedded_urls {
    view_label: "Events: About Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__about.process__file__embedded_urls}) as events__about__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__phone_numbers {
    view_label: "Events: About Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__phone_numbers}) as events__about__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__asset__vulnerabilities {
    view_label: "Events: About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events__about.asset__vulnerabilities}) as events__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__about__asset__attribute__roles {
    view_label: "Events: About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.asset__attribute__roles}) as events__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__asset__attribute__labels {
    view_label: "Events: About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.asset__attribute__labels}) as events__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__software {
    view_label: "Events: Intermediary Asset Software"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__software}) as events__intermediary__asset__software ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__names {
    view_label: "Events: Security Result About File Names"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__names}) as events__security_result__about__file__names ;;
    relationship: one_to_many
  }
  join: events__security_result__about__labels {
    view_label: "Events: Security Result About Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__labels}) as events__security_result__about__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__category_details {
    view_label: "Events: Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__security_result.category_details}) as events__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__target__network__dns__authority {
    view_label: "Events: Target Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.target__network__dns__authority}) as events__target__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__target__network__dhcp__options {
    view_label: "Events: Target Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.target__network__dhcp__options}) as events__target__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__email__cc {
    view_label: "Events: Target Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__email__cc}) as events__target__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__section {
    view_label: "Events: Target File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__section}) as events__target__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__target__process__file__embedded_ips {
    view_label: "Events: Target Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.target__process__file__embedded_ips}) as events__target__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__target__security_result__campaigns {
    view_label: "Events: Target Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__target__security_result.campaigns}) as events__target__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__phone_numbers {
    view_label: "Events: Target Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__phone_numbers}) as events__target__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__department {
    view_label: "Events: Target Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__department}) as events__target__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__phone_numbers {
    view_label: "Events: Target Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__phone_numbers}) as events__target__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__user__time_off {
    view_label: "Events: Target User Time Off"
    sql: LEFT JOIN UNNEST(${events.target__user__time_off}) as events__target__user__time_off ;;
    relationship: one_to_many
  }
  join: events__target__user__attribute__roles {
    view_label: "Events: Target User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__user__attribute__roles}) as events__target__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__user__attribute__labels {
    view_label: "Events: Target User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__user__attribute__labels}) as events__target__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__network__dns__answers {
    view_label: "Events: Principal Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.principal__network__dns__answers}) as events__principal__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__principal__group__email_addresses {
    view_label: "Events: Principal Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__group__email_addresses}) as events__principal__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__security_result {
    view_label: "Events: Principal Security Result"
    sql: LEFT JOIN UNNEST(${events.principal__security_result}) as events__principal__security_result ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__department {
    view_label: "Events: Principal Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__department}) as events__principal__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__category {
    view_label: "Events: Observer Security Result Category"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.category}) as events__observer__security_result__category ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__smtp__rcpt_to {
    view_label: "Events: Src Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__smtp__rcpt_to}) as events__src__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__resource {
    view_label: "Events: Src File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__resource}) as events__src__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__src__process__file__embedded_domains {
    view_label: "Events: Src Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.src__process__file__embedded_domains}) as events__src__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__src__resource__attribute__roles {
    view_label: "Events: Src Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__resource__attribute__roles}) as events__src__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__resource__attribute__labels {
    view_label: "Events: Src Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__resource__attribute__labels}) as events__src__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__group_identifiers {
    view_label: "Events: Src Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__group_identifiers}) as events__src__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__group_identifiers {
    view_label: "Events: Src Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__group_identifiers}) as events__src__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__email__to {
    view_label: "Events: About Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__email__to}) as events__about__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain {
    view_label: "Events: About User Management Chain"
    sql: LEFT JOIN UNNEST(${events__about.user_management_chain}) as events__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__tags {
    view_label: "Events: About Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__tags}) as events__about__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__email_addresses {
    view_label: "Events: About Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__email_addresses}) as events__about__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__email_addresses {
    view_label: "Events: About Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__email_addresses}) as events__about__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__smtp__rcpt_to {
    view_label: "Events: Intermediary Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__smtp__rcpt_to}) as events__intermediary__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__email_addresses {
    view_label: "Events: Intermediary User Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__email_addresses}) as events__intermediary__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__network__dns__additional {
    view_label: "Events: Target Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.target__network__dns__additional}) as events__target__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__target__network__dns__questions {
    view_label: "Events: Target Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.target__network__dns__questions}) as events__target__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__email__bcc {
    view_label: "Events: Target Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__email__bcc}) as events__target__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__target__process__file__embedded_urls {
    view_label: "Events: Target Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.target__process__file__embedded_urls}) as events__target__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__phone_numbers {
    view_label: "Events: Target Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__phone_numbers}) as events__target__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__asset__vulnerabilities {
    view_label: "Events: Target Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events.target__asset__vulnerabilities}) as events__target__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__target__asset__attribute__roles {
    view_label: "Events: Target Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__asset__attribute__roles}) as events__target__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__asset__attribute__labels {
    view_label: "Events: Target Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__asset__attribute__labels}) as events__target__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__category {
    view_label: "Events: Principal Security Result Category"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.category}) as events__principal__security_result__category ;;
    relationship: one_to_many
  }
  join: events__observer__network__dns__authority {
    view_label: "Events: Observer Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.observer__network__dns__authority}) as events__observer__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__observer__network__dhcp__options {
    view_label: "Events: Observer Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.observer__network__dhcp__options}) as events__observer__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__email__cc {
    view_label: "Events: Observer Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__email__cc}) as events__observer__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__section {
    view_label: "Events: Observer File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__section}) as events__observer__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__embedded_ips {
    view_label: "Events: Observer Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__embedded_ips}) as events__observer__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__campaigns {
    view_label: "Events: Observer Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.campaigns}) as events__observer__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__phone_numbers {
    view_label: "Events: Observer Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__phone_numbers}) as events__observer__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__department {
    view_label: "Events: Observer Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__department}) as events__observer__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__phone_numbers {
    view_label: "Events: Observer Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__phone_numbers}) as events__observer__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__user__time_off {
    view_label: "Events: Observer User Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__user__time_off}) as events__observer__user__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__user__attribute__roles {
    view_label: "Events: Observer User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__user__attribute__roles}) as events__observer__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__user__attribute__labels {
    view_label: "Events: Observer User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__user__attribute__labels}) as events__observer__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__metadata__tags__data_tap_config_name {
    view_label: "Events: Metadata Tags Data Tap Config Name"
    sql: LEFT JOIN UNNEST(${events.metadata__tags__data_tap_config_name}) as events__metadata__tags__data_tap_config_name ;;
    relationship: one_to_many
  }
  join: events__metadata__base_labels__custom_labels {
    view_label: "Events: Metadata Base Labels Custom Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__base_labels__custom_labels}) as events__metadata__base_labels__custom_labels ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__email__subject {
    view_label: "Events: Src Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__email__subject}) as events__src__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__src__cloud__vpc__attribute__roles {
    view_label: "Events: Src Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__cloud__vpc__attribute__roles}) as events__src__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__cloud__vpc__attribute__labels {
    view_label: "Events: Src Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__cloud__vpc__attribute__labels}) as events__src__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__imports__functions {
    view_label: "Events: Src File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__src__file__pe_file__imports.functions}) as events__src__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__src__process__file__capabilities_tags {
    view_label: "Events: Src Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.src__process__file__capabilities_tags}) as events__src__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__group_identifiers {
    view_label: "Events: Src Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__group_identifiers}) as events__src__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__email_addresses {
    view_label: "Events: Src Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__email_addresses}) as events__src__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__network__smtp__server_response {
    view_label: "Events: About Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__about.network__smtp__server_response}) as events__about__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__imports {
    view_label: "Events: About File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__imports}) as events__about__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__about__group__attribute__roles {
    view_label: "Events: About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.group__attribute__roles}) as events__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__group__attribute__labels {
    view_label: "Events: About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.group__attribute__labels}) as events__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__process__command_line_history {
    view_label: "Events: About Process Command Line History"
    sql: LEFT JOIN UNNEST(${events__about.process__command_line_history}) as events__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__about__security_result__outcomes {
    view_label: "Events: About Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__about__security_result.outcomes}) as events__about__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__names {
    view_label: "Events: About Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__names}) as events__about__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__email_addresses {
    view_label: "Events: About Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__email_addresses}) as events__about__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__phone_numbers {
    view_label: "Events: About Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__phone_numbers}) as events__about__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__department {
    view_label: "Events: About Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__department}) as events__about__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__email__subject {
    view_label: "Events: Intermediary Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__email__subject}) as events__intermediary__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__embedded_domains {
    view_label: "Events: Intermediary File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__embedded_domains}) as events__intermediary__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource_ancestors {
    view_label: "Events: Intermediary Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events__intermediary.resource_ancestors}) as events__intermediary__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors {
    view_label: "Events: Intermediary Process Ancestors"
    sql: LEFT JOIN UNNEST(${events__intermediary.process_ancestors}) as events__intermediary__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__nat_ip {
    view_label: "Events: Security Result About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__nat_ip}) as events__security_result__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__email__to {
    view_label: "Events: Target Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__email__to}) as events__target__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain {
    view_label: "Events: Target User Management Chain"
    sql: LEFT JOIN UNNEST(${events.target__user_management_chain}) as events__target__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__tags {
    view_label: "Events: Target Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__tags}) as events__target__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__email_addresses {
    view_label: "Events: Target Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__email_addresses}) as events__target__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__email_addresses {
    view_label: "Events: Target Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__email_addresses}) as events__target__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__network__dns__authority {
    view_label: "Events: Principal Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.principal__network__dns__authority}) as events__principal__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__principal__network__dhcp__options {
    view_label: "Events: Principal Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.principal__network__dhcp__options}) as events__principal__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__email__cc {
    view_label: "Events: Principal Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__email__cc}) as events__principal__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__section {
    view_label: "Events: Principal File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__section}) as events__principal__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__embedded_ips {
    view_label: "Events: Principal Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__embedded_ips}) as events__principal__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__campaigns {
    view_label: "Events: Principal Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.campaigns}) as events__principal__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__phone_numbers {
    view_label: "Events: Principal Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__phone_numbers}) as events__principal__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__department {
    view_label: "Events: Principal Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__department}) as events__principal__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__phone_numbers {
    view_label: "Events: Principal Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__phone_numbers}) as events__principal__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__user__time_off {
    view_label: "Events: Principal User Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__user__time_off}) as events__principal__user__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__user__attribute__roles {
    view_label: "Events: Principal User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__user__attribute__roles}) as events__principal__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__user__attribute__labels {
    view_label: "Events: Principal User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__user__attribute__labels}) as events__principal__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__network__dns__additional {
    view_label: "Events: Observer Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.observer__network__dns__additional}) as events__observer__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__observer__network__dns__questions {
    view_label: "Events: Observer Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.observer__network__dns__questions}) as events__observer__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__email__bcc {
    view_label: "Events: Observer Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__email__bcc}) as events__observer__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__embedded_urls {
    view_label: "Events: Observer Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__embedded_urls}) as events__observer__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__phone_numbers {
    view_label: "Events: Observer Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__phone_numbers}) as events__observer__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__asset__vulnerabilities {
    view_label: "Events: Observer Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events.observer__asset__vulnerabilities}) as events__observer__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__observer__asset__attribute__roles {
    view_label: "Events: Observer Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__asset__attribute__roles}) as events__observer__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__asset__attribute__labels {
    view_label: "Events: Observer Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__asset__attribute__labels}) as events__observer__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__security_result__associations {
    view_label: "Events: Src Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__src__security_result.associations}) as events__src__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__src__security_result__rule_labels {
    view_label: "Events: Src Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__src__security_result.rule_labels}) as events__src__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__phone_numbers {
    view_label: "Events: Src Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__phone_numbers}) as events__src__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__asset__software__permissions {
    view_label: "Events: Src Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__src__asset__software.permissions}) as events__src__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__src__user__attribute__permissions {
    view_label: "Events: Src User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__user__attribute__permissions}) as events__src__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__smtp__rcpt_to {
    view_label: "Events: About Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__smtp__rcpt_to}) as events__about__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__resource {
    view_label: "Events: About File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__resource}) as events__about__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__about__process__file__embedded_domains {
    view_label: "Events: About Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__about.process__file__embedded_domains}) as events__about__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__about__resource__attribute__roles {
    view_label: "Events: About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.resource__attribute__roles}) as events__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__resource__attribute__labels {
    view_label: "Events: About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.resource__attribute__labels}) as events__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__group_identifiers {
    view_label: "Events: About Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__group_identifiers}) as events__about__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__group_identifiers {
    view_label: "Events: About Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__group_identifiers}) as events__about__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__capabilities_tags {
    view_label: "Events: Intermediary File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__capabilities_tags}) as events__intermediary__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__action {
    view_label: "Events: Intermediary Security Result Action"
    sql: LEFT JOIN UNNEST(${events__intermediary.security_result__action}) as events__intermediary__security_result__action ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__department {
    view_label: "Events: Intermediary Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__department}) as events__intermediary__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__department {
    view_label: "Events: Intermediary Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__department}) as events__intermediary__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__investigation__comments {
    view_label: "Events: Intermediary Investigation Comments"
    sql: LEFT JOIN UNNEST(${events__intermediary.investigation__comments}) as events__intermediary__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__group_identifiers {
    view_label: "Events: Intermediary User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__group_identifiers}) as events__intermediary__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__network__smtp__server_response {
    view_label: "Events: Target Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.target__network__smtp__server_response}) as events__target__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__imports {
    view_label: "Events: Target File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__imports}) as events__target__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__target__group__attribute__roles {
    view_label: "Events: Target Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__group__attribute__roles}) as events__target__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__group__attribute__labels {
    view_label: "Events: Target Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__group__attribute__labels}) as events__target__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__process__command_line_history {
    view_label: "Events: Target Process Command Line History"
    sql: LEFT JOIN UNNEST(${events.target__process__command_line_history}) as events__target__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__target__security_result__outcomes {
    view_label: "Events: Target Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__target__security_result.outcomes}) as events__target__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__names {
    view_label: "Events: Target Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__names}) as events__target__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__email_addresses {
    view_label: "Events: Target Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__email_addresses}) as events__target__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__phone_numbers {
    view_label: "Events: Target Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__phone_numbers}) as events__target__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__department {
    view_label: "Events: Target Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__department}) as events__target__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__principal__network__dns__additional {
    view_label: "Events: Principal Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.principal__network__dns__additional}) as events__principal__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__principal__network__dns__questions {
    view_label: "Events: Principal Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.principal__network__dns__questions}) as events__principal__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__email__bcc {
    view_label: "Events: Principal Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__email__bcc}) as events__principal__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__embedded_urls {
    view_label: "Events: Principal Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__embedded_urls}) as events__principal__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__phone_numbers {
    view_label: "Events: Principal Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__phone_numbers}) as events__principal__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__asset__vulnerabilities {
    view_label: "Events: Principal Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events.principal__asset__vulnerabilities}) as events__principal__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__principal__asset__attribute__roles {
    view_label: "Events: Principal Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__asset__attribute__roles}) as events__principal__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__asset__attribute__labels {
    view_label: "Events: Principal Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__asset__attribute__labels}) as events__principal__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__email__to {
    view_label: "Events: Observer Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__email__to}) as events__observer__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain {
    view_label: "Events: Observer User Management Chain"
    sql: LEFT JOIN UNNEST(${events.observer__user_management_chain}) as events__observer__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__tags {
    view_label: "Events: Observer Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__tags}) as events__observer__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__email_addresses {
    view_label: "Events: Observer Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__email_addresses}) as events__observer__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__email_addresses {
    view_label: "Events: Observer Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__email_addresses}) as events__observer__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__metadata__enrichment_labels__log_types {
    view_label: "Events: Metadata Enrichment Labels Log Types"
    sql: LEFT JOIN UNNEST(${events.metadata__enrichment_labels__log_types}) as events__metadata__enrichment_labels__log_types ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__email__cc {
    view_label: "Events: Src Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__email__cc}) as events__src__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__dns__answers {
    view_label: "Events: Src Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__dns__answers}) as events__src__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__department {
    view_label: "Events: Src User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.department}) as events__src__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__src__security_result__category_details {
    view_label: "Events: Src Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__src__security_result.category_details}) as events__src__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__time_off {
    view_label: "Events: Src Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__time_off}) as events__src__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__attribute__roles {
    view_label: "Events: Src Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__attribute__roles}) as events__src__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__attribute__labels {
    view_label: "Events: Src Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__attribute__labels}) as events__src__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__group_identifiers {
    view_label: "Events: Src Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__group_identifiers}) as events__src__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__time_off {
    view_label: "Events: Src Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__time_off}) as events__src__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__attribute__roles {
    view_label: "Events: Src Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__attribute__roles}) as events__src__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__attribute__labels {
    view_label: "Events: Src Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__attribute__labels}) as events__src__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__asset__attribute__permissions {
    view_label: "Events: Src Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__asset__attribute__permissions}) as events__src__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__email__subject {
    view_label: "Events: About Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__email__subject}) as events__about__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__about__cloud__vpc__attribute__roles {
    view_label: "Events: About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.cloud__vpc__attribute__roles}) as events__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__cloud__vpc__attribute__labels {
    view_label: "Events: About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.cloud__vpc__attribute__labels}) as events__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__imports__functions {
    view_label: "Events: About File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__about__file__pe_file__imports.functions}) as events__about__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__about__process__file__capabilities_tags {
    view_label: "Events: About Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__about.process__file__capabilities_tags}) as events__about__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__group_identifiers {
    view_label: "Events: About Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__group_identifiers}) as events__about__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__email_addresses {
    view_label: "Events: About Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__email_addresses}) as events__about__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__dns__answers {
    view_label: "Events: Intermediary Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__dns__answers}) as events__intermediary__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__intermediary__group__email_addresses {
    view_label: "Events: Intermediary Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.group__email_addresses}) as events__intermediary__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result {
    view_label: "Events: Intermediary Security Result"
    sql: LEFT JOIN UNNEST(${events__intermediary.security_result}) as events__intermediary__security_result ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__department {
    view_label: "Events: Intermediary Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__department}) as events__intermediary__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__security_result__detection_fields {
    view_label: "Events: Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__security_result.detection_fields}) as events__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__smtp__rcpt_to {
    view_label: "Events: Target Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__smtp__rcpt_to}) as events__target__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__resource {
    view_label: "Events: Target File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__resource}) as events__target__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__target__process__file__embedded_domains {
    view_label: "Events: Target Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.target__process__file__embedded_domains}) as events__target__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__target__resource__attribute__roles {
    view_label: "Events: Target Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__resource__attribute__roles}) as events__target__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__resource__attribute__labels {
    view_label: "Events: Target Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__resource__attribute__labels}) as events__target__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__group_identifiers {
    view_label: "Events: Target Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__group_identifiers}) as events__target__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__group_identifiers {
    view_label: "Events: Target Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__group_identifiers}) as events__target__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__network__tls__client__supported_ciphers {
    view_label: "Events: Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.network__tls__client__supported_ciphers}) as events__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__email__to {
    view_label: "Events: Principal Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__email__to}) as events__principal__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain {
    view_label: "Events: Principal User Management Chain"
    sql: LEFT JOIN UNNEST(${events.principal__user_management_chain}) as events__principal__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__tags {
    view_label: "Events: Principal Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__tags}) as events__principal__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__email_addresses {
    view_label: "Events: Principal Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__email_addresses}) as events__principal__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__email_addresses {
    view_label: "Events: Principal Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__email_addresses}) as events__principal__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__network__smtp__server_response {
    view_label: "Events: Observer Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.observer__network__smtp__server_response}) as events__observer__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__imports {
    view_label: "Events: Observer File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__imports}) as events__observer__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__observer__group__attribute__roles {
    view_label: "Events: Observer Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__group__attribute__roles}) as events__observer__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__group__attribute__labels {
    view_label: "Events: Observer Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__group__attribute__labels}) as events__observer__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__process__command_line_history {
    view_label: "Events: Observer Process Command Line History"
    sql: LEFT JOIN UNNEST(${events.observer__process__command_line_history}) as events__observer__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__outcomes {
    view_label: "Events: Observer Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.outcomes}) as events__observer__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__names {
    view_label: "Events: Observer Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__names}) as events__observer__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__email_addresses {
    view_label: "Events: Observer Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__email_addresses}) as events__observer__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__phone_numbers {
    view_label: "Events: Observer Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__phone_numbers}) as events__observer__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__department {
    view_label: "Events: Observer Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__department}) as events__observer__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__metadata__enrichment_labels__namespaces {
    view_label: "Events: Metadata Enrichment Labels Namespaces"
    sql: LEFT JOIN UNNEST(${events.metadata__enrichment_labels__namespaces}) as events__metadata__enrichment_labels__namespaces ;;
    relationship: one_to_many
  }
  join: events__metadata__base_labels__ingestion_labels {
    view_label: "Events: Metadata Base Labels Ingestion Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__base_labels__ingestion_labels}) as events__metadata__base_labels__ingestion_labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities {
    view_label: "Events: Extensions Vulns Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events.extensions__vulns__vulnerabilities}) as events__extensions__vulns__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Src Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__email__bcc}) as events__src__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__section {
    view_label: "Events: Src Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__section}) as events__src__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__time_off {
    view_label: "Events: Src Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__time_off}) as events__src__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__attribute__roles {
    view_label: "Events: Src Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__attribute__roles}) as events__src__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__attribute__labels {
    view_label: "Events: Src Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__attribute__labels}) as events__src__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__email_addresses {
    view_label: "Events: Src Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__email_addresses}) as events__src__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__security_result__associations {
    view_label: "Events: About Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__about__security_result.associations}) as events__about__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__about__security_result__rule_labels {
    view_label: "Events: About Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__about__security_result.rule_labels}) as events__about__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__phone_numbers {
    view_label: "Events: About Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__phone_numbers}) as events__about__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__asset__software__permissions {
    view_label: "Events: About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__about__asset__software.permissions}) as events__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__about__user__attribute__permissions {
    view_label: "Events: About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.user__attribute__permissions}) as events__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__category {
    view_label: "Events: Intermediary Security Result Category"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.category}) as events__intermediary__security_result__category ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__department {
    view_label: "Events: Security Result About User Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__department}) as events__security_result__about__user__department ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__email__subject {
    view_label: "Events: Target Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__email__subject}) as events__target__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__target__cloud__vpc__attribute__roles {
    view_label: "Events: Target Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__cloud__vpc__attribute__roles}) as events__target__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__cloud__vpc__attribute__labels {
    view_label: "Events: Target Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__cloud__vpc__attribute__labels}) as events__target__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__imports__functions {
    view_label: "Events: Target File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__target__file__pe_file__imports.functions}) as events__target__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__target__process__file__capabilities_tags {
    view_label: "Events: Target Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.target__process__file__capabilities_tags}) as events__target__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__group_identifiers {
    view_label: "Events: Target Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__group_identifiers}) as events__target__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__email_addresses {
    view_label: "Events: Target Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__email_addresses}) as events__target__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__network__smtp__server_response {
    view_label: "Events: Principal Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.principal__network__smtp__server_response}) as events__principal__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__imports {
    view_label: "Events: Principal File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__imports}) as events__principal__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__principal__group__attribute__roles {
    view_label: "Events: Principal Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__group__attribute__roles}) as events__principal__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__group__attribute__labels {
    view_label: "Events: Principal Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__group__attribute__labels}) as events__principal__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__process__command_line_history {
    view_label: "Events: Principal Process Command Line History"
    sql: LEFT JOIN UNNEST(${events.principal__process__command_line_history}) as events__principal__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__outcomes {
    view_label: "Events: Principal Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.outcomes}) as events__principal__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__names {
    view_label: "Events: Principal Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__names}) as events__principal__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__email_addresses {
    view_label: "Events: Principal Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__email_addresses}) as events__principal__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__phone_numbers {
    view_label: "Events: Principal Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__phone_numbers}) as events__principal__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__department {
    view_label: "Events: Principal Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__department}) as events__principal__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__smtp__rcpt_to {
    view_label: "Events: Observer Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__smtp__rcpt_to}) as events__observer__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__resource {
    view_label: "Events: Observer File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__resource}) as events__observer__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__embedded_domains {
    view_label: "Events: Observer Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__embedded_domains}) as events__observer__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__observer__resource__attribute__roles {
    view_label: "Events: Observer Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__resource__attribute__roles}) as events__observer__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__resource__attribute__labels {
    view_label: "Events: Observer Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__resource__attribute__labels}) as events__observer__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__group_identifiers {
    view_label: "Events: Observer Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__group_identifiers}) as events__observer__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__group_identifiers {
    view_label: "Events: Observer Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__group_identifiers}) as events__observer__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__email__to {
    view_label: "Events: Src Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__email__to}) as events__src__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__dns__authority {
    view_label: "Events: Src Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__dns__authority}) as events__src__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__dhcp__options {
    view_label: "Events: Src Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__dhcp__options}) as events__src__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__src__cloud__project__attribute__roles {
    view_label: "Events: Src Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__cloud__project__attribute__roles}) as events__src__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__cloud__project__attribute__labels {
    view_label: "Events: Src Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__cloud__project__attribute__labels}) as events__src__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__signature_info__signer {
    view_label: "Events: Src File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__signature_info__signer}) as events__src__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__src__group__attribute__permissions {
    view_label: "Events: Src Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__group__attribute__permissions}) as events__src__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__email__cc {
    view_label: "Events: About Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__email__cc}) as events__about__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__dns__answers {
    view_label: "Events: About Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__dns__answers}) as events__about__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__department {
    view_label: "Events: About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.department}) as events__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__about__security_result__category_details {
    view_label: "Events: About Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__about__security_result.category_details}) as events__about__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__time_off {
    view_label: "Events: About Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__time_off}) as events__about__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__attribute__roles {
    view_label: "Events: About Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__attribute__roles}) as events__about__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__attribute__labels {
    view_label: "Events: About Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__attribute__labels}) as events__about__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__group_identifiers {
    view_label: "Events: About Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__group_identifiers}) as events__about__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__time_off {
    view_label: "Events: About Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__time_off}) as events__about__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__attribute__roles {
    view_label: "Events: About Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__attribute__roles}) as events__about__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__attribute__labels {
    view_label: "Events: About Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__attribute__labels}) as events__about__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__asset__attribute__permissions {
    view_label: "Events: About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.asset__attribute__permissions}) as events__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__dns__authority {
    view_label: "Events: Intermediary Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__dns__authority}) as events__intermediary__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__dhcp__options {
    view_label: "Events: Intermediary Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__dhcp__options}) as events__intermediary__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__email__cc {
    view_label: "Events: Intermediary Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__email__cc}) as events__intermediary__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__section {
    view_label: "Events: Intermediary File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__section}) as events__intermediary__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__embedded_ips {
    view_label: "Events: Intermediary Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__embedded_ips}) as events__intermediary__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__campaigns {
    view_label: "Events: Intermediary Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.campaigns}) as events__intermediary__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__phone_numbers {
    view_label: "Events: Intermediary Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__phone_numbers}) as events__intermediary__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__department {
    view_label: "Events: Intermediary Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__department}) as events__intermediary__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__phone_numbers {
    view_label: "Events: Intermediary Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__phone_numbers}) as events__intermediary__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__time_off {
    view_label: "Events: Intermediary User Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__time_off}) as events__intermediary__user__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__attribute__roles {
    view_label: "Events: Intermediary User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__attribute__roles}) as events__intermediary__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__attribute__labels {
    view_label: "Events: Intermediary User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__attribute__labels}) as events__intermediary__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__email__cc {
    view_label: "Events: Security Result About Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__email__cc}) as events__security_result__about__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_location {
    view_label: "Events: Security Result About Ip Location"
    sql: LEFT JOIN UNNEST(${events__security_result.about__ip_location}) as events__security_result__about__ip_location ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__labels {
    view_label: "Events: Security Result About Asset Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__labels}) as events__security_result__about__asset__labels ;;
    relationship: one_to_many
  }
  join: events__target__security_result__associations {
    view_label: "Events: Target Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__target__security_result.associations}) as events__target__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__target__security_result__rule_labels {
    view_label: "Events: Target Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__target__security_result.rule_labels}) as events__target__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__phone_numbers {
    view_label: "Events: Target Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__phone_numbers}) as events__target__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__asset__software__permissions {
    view_label: "Events: Target Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__target__asset__software.permissions}) as events__target__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__target__user__attribute__permissions {
    view_label: "Events: Target User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__user__attribute__permissions}) as events__target__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__smtp__rcpt_to {
    view_label: "Events: Principal Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__smtp__rcpt_to}) as events__principal__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__resource {
    view_label: "Events: Principal File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__resource}) as events__principal__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__embedded_domains {
    view_label: "Events: Principal Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__embedded_domains}) as events__principal__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__principal__resource__attribute__roles {
    view_label: "Events: Principal Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__resource__attribute__roles}) as events__principal__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__resource__attribute__labels {
    view_label: "Events: Principal Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__resource__attribute__labels}) as events__principal__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__group_identifiers {
    view_label: "Events: Principal Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__group_identifiers}) as events__principal__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__group_identifiers {
    view_label: "Events: Principal Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__group_identifiers}) as events__principal__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__email__subject {
    view_label: "Events: Observer Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__email__subject}) as events__observer__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__vpc__attribute__roles {
    view_label: "Events: Observer Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__vpc__attribute__roles}) as events__observer__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__vpc__attribute__labels {
    view_label: "Events: Observer Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__vpc__attribute__labels}) as events__observer__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__imports__functions {
    view_label: "Events: Observer File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__observer__file__pe_file__imports.functions}) as events__observer__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__capabilities_tags {
    view_label: "Events: Observer Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__capabilities_tags}) as events__observer__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__group_identifiers {
    view_label: "Events: Observer Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__group_identifiers}) as events__observer__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__email_addresses {
    view_label: "Events: Observer Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__email_addresses}) as events__observer__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__dns__additional {
    view_label: "Events: Src Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__dns__additional}) as events__src__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__dns__questions {
    view_label: "Events: Src Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__dns__questions}) as events__src__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__src__file__signature_info__sigcheck__signer {
    view_label: "Events: Src File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.src__file__signature_info__sigcheck__signer}) as events__src__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__src__resource__attribute__permissions {
    view_label: "Events: Src Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__resource__attribute__permissions}) as events__src__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__phone_numbers {
    view_label: "Events: Src User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.phone_numbers}) as events__src__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__embedded_ips {
    view_label: "Events: Src Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__embedded_ips}) as events__src__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__time_off {
    view_label: "Events: Src Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__time_off}) as events__src__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__attribute__roles {
    view_label: "Events: Src Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__attribute__roles}) as events__src__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__attribute__labels {
    view_label: "Events: Src Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__attribute__labels}) as events__src__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__group_identifiers {
    view_label: "Events: Src Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__group_identifiers}) as events__src__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__email__bcc {
    view_label: "Events: About Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__email__bcc}) as events__about__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__section {
    view_label: "Events: About Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__section}) as events__about__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__time_off {
    view_label: "Events: About Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__time_off}) as events__about__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__attribute__roles {
    view_label: "Events: About Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__attribute__roles}) as events__about__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__attribute__labels {
    view_label: "Events: About Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__attribute__labels}) as events__about__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__email_addresses {
    view_label: "Events: About Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__email_addresses}) as events__about__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__dns__additional {
    view_label: "Events: Intermediary Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__dns__additional}) as events__intermediary__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__dns__questions {
    view_label: "Events: Intermediary Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__dns__questions}) as events__intermediary__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__email__bcc {
    view_label: "Events: Intermediary Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__email__bcc}) as events__intermediary__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__embedded_urls {
    view_label: "Events: Intermediary Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__embedded_urls}) as events__intermediary__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__phone_numbers {
    view_label: "Events: Intermediary Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__phone_numbers}) as events__intermediary__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__vulnerabilities {
    view_label: "Events: Intermediary Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__vulnerabilities}) as events__intermediary__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__attribute__roles {
    view_label: "Events: Intermediary Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__attribute__roles}) as events__intermediary__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__attribute__labels {
    view_label: "Events: Intermediary Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__attribute__labels}) as events__intermediary__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__associations__alias {
    view_label: "Events: Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__security_result__associations.alias}) as events__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__email__bcc {
    view_label: "Events: Security Result About Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__email__bcc}) as events__security_result__about__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__embedded_ips {
    view_label: "Events: Security Result About File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__embedded_ips}) as events__security_result__about__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__tags {
    view_label: "Events: Security Result About Process File Tags"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__tags}) as events__security_result__about__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__email__cc {
    view_label: "Events: Target Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__email__cc}) as events__target__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__dns__answers {
    view_label: "Events: Target Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__dns__answers}) as events__target__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__department {
    view_label: "Events: Target User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.department}) as events__target__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__target__security_result__category_details {
    view_label: "Events: Target Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__target__security_result.category_details}) as events__target__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__time_off {
    view_label: "Events: Target Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__time_off}) as events__target__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__attribute__roles {
    view_label: "Events: Target Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__attribute__roles}) as events__target__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__attribute__labels {
    view_label: "Events: Target Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__attribute__labels}) as events__target__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__group_identifiers {
    view_label: "Events: Target Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__group_identifiers}) as events__target__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__time_off {
    view_label: "Events: Target Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__time_off}) as events__target__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__attribute__roles {
    view_label: "Events: Target Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__attribute__roles}) as events__target__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__attribute__labels {
    view_label: "Events: Target Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__attribute__labels}) as events__target__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__asset__attribute__permissions {
    view_label: "Events: Target Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__asset__attribute__permissions}) as events__target__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__email__subject {
    view_label: "Events: Principal Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__email__subject}) as events__principal__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__vpc__attribute__roles {
    view_label: "Events: Principal Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__vpc__attribute__roles}) as events__principal__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__vpc__attribute__labels {
    view_label: "Events: Principal Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__vpc__attribute__labels}) as events__principal__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__imports__functions {
    view_label: "Events: Principal File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__principal__file__pe_file__imports.functions}) as events__principal__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__capabilities_tags {
    view_label: "Events: Principal Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__capabilities_tags}) as events__principal__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__group_identifiers {
    view_label: "Events: Principal Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__group_identifiers}) as events__principal__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__email_addresses {
    view_label: "Events: Principal Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__email_addresses}) as events__principal__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__associations {
    view_label: "Events: Observer Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.associations}) as events__observer__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__rule_labels {
    view_label: "Events: Observer Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.rule_labels}) as events__observer__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__phone_numbers {
    view_label: "Events: Observer Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__phone_numbers}) as events__observer__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__asset__software__permissions {
    view_label: "Events: Observer Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__observer__asset__software.permissions}) as events__observer__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__user__attribute__permissions {
    view_label: "Events: Observer User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__user__attribute__permissions}) as events__observer__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__metadata__enrichment_labels__custom_labels {
    view_label: "Events: Metadata Enrichment Labels Custom Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__enrichment_labels__custom_labels}) as events__metadata__enrichment_labels__custom_labels ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Src Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__smtp__rcpt_to}) as events__src__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__src__network__tls__client__supported_ciphers {
    view_label: "Events: Src Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.src__network__tls__client__supported_ciphers}) as events__src__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__src__cloud__vpc__attribute__permissions {
    view_label: "Events: Src Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__cloud__vpc__attribute__permissions}) as events__src__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__imports {
    view_label: "Events: Src Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__imports}) as events__src__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__src__security_result__detection_fields {
    view_label: "Events: Src Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__src__security_result.detection_fields}) as events__src__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__embedded_urls {
    view_label: "Events: Src Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__embedded_urls}) as events__src__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__email__to {
    view_label: "Events: About Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__email__to}) as events__about__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__dns__authority {
    view_label: "Events: About Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__dns__authority}) as events__about__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__dhcp__options {
    view_label: "Events: About Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__dhcp__options}) as events__about__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__about__cloud__project__attribute__roles {
    view_label: "Events: About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.cloud__project__attribute__roles}) as events__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__cloud__project__attribute__labels {
    view_label: "Events: About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.cloud__project__attribute__labels}) as events__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__signature_info__signer {
    view_label: "Events: About File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__signature_info__signer}) as events__about__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__about__group__attribute__permissions {
    view_label: "Events: About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.group__attribute__permissions}) as events__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__email__to {
    view_label: "Events: Intermediary Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__email__to}) as events__intermediary__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain {
    view_label: "Events: Intermediary User Management Chain"
    sql: LEFT JOIN UNNEST(${events__intermediary.user_management_chain}) as events__intermediary__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__tags {
    view_label: "Events: Intermediary Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__tags}) as events__intermediary__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__email_addresses {
    view_label: "Events: Intermediary Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__email_addresses}) as events__intermediary__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__email_addresses {
    view_label: "Events: Intermediary Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__email_addresses}) as events__intermediary__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact {
    view_label: "Events: Security Result About Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events__security_result.about__ip_geo_artifact}) as events__security_result__about__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__email__to {
    view_label: "Events: Security Result About Network Email To"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__email__to}) as events__security_result__about__network__email__to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__embedded_urls {
    view_label: "Events: Security Result About File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__embedded_urls}) as events__security_result__about__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__names {
    view_label: "Events: Security Result About Process File Names"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__names}) as events__security_result__about__process__file__names ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__name_server {
    view_label: "Events: Security Result About Domain Name Server"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__name_server}) as events__security_result__about__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__hardware {
    view_label: "Events: Security Result About Asset Hardware"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__hardware}) as events__security_result__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__phone_numbers {
    view_label: "Events: Security Result About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__phone_numbers}) as events__security_result__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Target Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__email__bcc}) as events__target__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__section {
    view_label: "Events: Target Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__section}) as events__target__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__time_off {
    view_label: "Events: Target Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__time_off}) as events__target__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__attribute__roles {
    view_label: "Events: Target Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__attribute__roles}) as events__target__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__attribute__labels {
    view_label: "Events: Target Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__attribute__labels}) as events__target__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__email_addresses {
    view_label: "Events: Target Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__email_addresses}) as events__target__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__associations {
    view_label: "Events: Principal Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.associations}) as events__principal__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__rule_labels {
    view_label: "Events: Principal Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.rule_labels}) as events__principal__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__phone_numbers {
    view_label: "Events: Principal Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__phone_numbers}) as events__principal__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__asset__software__permissions {
    view_label: "Events: Principal Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__principal__asset__software.permissions}) as events__principal__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__user__attribute__permissions {
    view_label: "Events: Principal User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__user__attribute__permissions}) as events__principal__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__email__cc {
    view_label: "Events: Observer Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__email__cc}) as events__observer__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__dns__answers {
    view_label: "Events: Observer Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__dns__answers}) as events__observer__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__department {
    view_label: "Events: Observer User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.department}) as events__observer__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__category_details {
    view_label: "Events: Observer Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.category_details}) as events__observer__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__time_off {
    view_label: "Events: Observer Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__time_off}) as events__observer__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__attribute__roles {
    view_label: "Events: Observer Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__attribute__roles}) as events__observer__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__attribute__labels {
    view_label: "Events: Observer Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__attribute__labels}) as events__observer__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__group_identifiers {
    view_label: "Events: Observer Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__group_identifiers}) as events__observer__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__time_off {
    view_label: "Events: Observer Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__time_off}) as events__observer__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__attribute__roles {
    view_label: "Events: Observer Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__attribute__roles}) as events__observer__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__attribute__labels {
    view_label: "Events: Observer Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__attribute__labels}) as events__observer__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__asset__attribute__permissions {
    view_label: "Events: Observer Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__asset__attribute__permissions}) as events__observer__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__ip}) as events__extensions__vulns__vulnerabilities__about__ip ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__email__subject {
    view_label: "Events: Src Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__email__subject}) as events__src__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__smtp__server_response {
    view_label: "Events: Src Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__smtp__server_response}) as events__src__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__resources_type_count {
    view_label: "Events: Src File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__resources_type_count}) as events__src__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__signature_info__x509 {
    view_label: "Events: Src File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__signature_info__x509}) as events__src__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__resource {
    view_label: "Events: Src Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__resource}) as events__src__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__email_addresses {
    view_label: "Events: Src User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.email_addresses}) as events__src__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__dns__additional {
    view_label: "Events: About Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__dns__additional}) as events__about__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__dns__questions {
    view_label: "Events: About Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__dns__questions}) as events__about__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__about__file__signature_info__sigcheck__signer {
    view_label: "Events: About File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__about.file__signature_info__sigcheck__signer}) as events__about__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__about__resource__attribute__permissions {
    view_label: "Events: About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.resource__attribute__permissions}) as events__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__phone_numbers {
    view_label: "Events: About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.phone_numbers}) as events__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__embedded_ips {
    view_label: "Events: About Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__embedded_ips}) as events__about__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__time_off {
    view_label: "Events: About Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__time_off}) as events__about__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__attribute__roles {
    view_label: "Events: About Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__attribute__roles}) as events__about__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__attribute__labels {
    view_label: "Events: About Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__attribute__labels}) as events__about__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__group_identifiers {
    view_label: "Events: About Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__group_identifiers}) as events__about__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__smtp__server_response {
    view_label: "Events: Intermediary Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__smtp__server_response}) as events__intermediary__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__imports {
    view_label: "Events: Intermediary File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__imports}) as events__intermediary__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__intermediary__group__attribute__roles {
    view_label: "Events: Intermediary Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.group__attribute__roles}) as events__intermediary__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__group__attribute__labels {
    view_label: "Events: Intermediary Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.group__attribute__labels}) as events__intermediary__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__command_line_history {
    view_label: "Events: Intermediary Process Command Line History"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__command_line_history}) as events__intermediary__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__outcomes {
    view_label: "Events: Intermediary Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.outcomes}) as events__intermediary__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__names {
    view_label: "Events: Intermediary Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__names}) as events__intermediary__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__email_addresses {
    view_label: "Events: Intermediary Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__email_addresses}) as events__intermediary__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__phone_numbers {
    view_label: "Events: Intermediary Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__phone_numbers}) as events__intermediary__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__department {
    view_label: "Events: Intermediary Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__department}) as events__intermediary__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__security_result__associations__country_code {
    view_label: "Events: Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__security_result__associations.country_code}) as events__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__software {
    view_label: "Events: Security Result About Asset Software"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__software}) as events__security_result__about__asset__software ;;
    relationship: one_to_many
  }
  join: events__security_result__attack_details__tactics {
    view_label: "Events: Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__security_result.attack_details__tactics}) as events__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__email__to {
    view_label: "Events: Target Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__email__to}) as events__target__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__dns__authority {
    view_label: "Events: Target Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__dns__authority}) as events__target__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__dhcp__options {
    view_label: "Events: Target Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__dhcp__options}) as events__target__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__target__cloud__project__attribute__roles {
    view_label: "Events: Target Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__cloud__project__attribute__roles}) as events__target__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__cloud__project__attribute__labels {
    view_label: "Events: Target Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__cloud__project__attribute__labels}) as events__target__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__signature_info__signer {
    view_label: "Events: Target File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__signature_info__signer}) as events__target__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__target__group__attribute__permissions {
    view_label: "Events: Target Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__group__attribute__permissions}) as events__target__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__email__cc {
    view_label: "Events: Principal Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__email__cc}) as events__principal__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__dns__answers {
    view_label: "Events: Principal Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__dns__answers}) as events__principal__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__department {
    view_label: "Events: Principal User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.department}) as events__principal__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__category_details {
    view_label: "Events: Principal Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.category_details}) as events__principal__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__time_off {
    view_label: "Events: Principal Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__time_off}) as events__principal__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__attribute__roles {
    view_label: "Events: Principal Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__attribute__roles}) as events__principal__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__attribute__labels {
    view_label: "Events: Principal Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__attribute__labels}) as events__principal__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__group_identifiers {
    view_label: "Events: Principal Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__group_identifiers}) as events__principal__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__time_off {
    view_label: "Events: Principal Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__time_off}) as events__principal__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__attribute__roles {
    view_label: "Events: Principal Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__attribute__roles}) as events__principal__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__attribute__labels {
    view_label: "Events: Principal Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__attribute__labels}) as events__principal__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__asset__attribute__permissions {
    view_label: "Events: Principal Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__asset__attribute__permissions}) as events__principal__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Observer Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__email__bcc}) as events__observer__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__section {
    view_label: "Events: Observer Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__section}) as events__observer__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__time_off {
    view_label: "Events: Observer Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__time_off}) as events__observer__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__attribute__roles {
    view_label: "Events: Observer Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__attribute__roles}) as events__observer__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__attribute__labels {
    view_label: "Events: Observer Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__attribute__labels}) as events__observer__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__email_addresses {
    view_label: "Events: Observer Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__email_addresses}) as events__observer__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__mac {
    view_label: "Events: Extensions Vulns Vulnerabilities About Mac"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__mac}) as events__extensions__vulns__vulnerabilities__about__mac ;;
    relationship: one_to_many
  }
  join: events__src__file__signature_info__sigcheck__x509 {
    view_label: "Events: Src File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.src__file__signature_info__sigcheck__x509}) as events__src__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__imports__functions {
    view_label: "Events: Src Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__src__process__file__pe_file__imports.functions}) as events__src__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__command_line_history {
    view_label: "Events: Src Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.command_line_history}) as events__src__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__src__domain__tech__attribute__permissions {
    view_label: "Events: Src Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__domain__tech__attribute__permissions}) as events__src__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__domain__zone__attribute__permissions {
    view_label: "Events: Src Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__domain__zone__attribute__permissions}) as events__src__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__time_off {
    view_label: "Events: Src Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__time_off}) as events__src__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__attribute__roles {
    view_label: "Events: Src Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__attribute__roles}) as events__src__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__attribute__labels {
    view_label: "Events: Src Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__attribute__labels}) as events__src__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: About Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__smtp__rcpt_to}) as events__about__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__about__network__tls__client__supported_ciphers {
    view_label: "Events: About Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__about.network__tls__client__supported_ciphers}) as events__about__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__about__cloud__vpc__attribute__permissions {
    view_label: "Events: About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.cloud__vpc__attribute__permissions}) as events__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__imports {
    view_label: "Events: About Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__imports}) as events__about__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__about__security_result__detection_fields {
    view_label: "Events: About Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__about__security_result.detection_fields}) as events__about__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__embedded_urls {
    view_label: "Events: About Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__embedded_urls}) as events__about__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__smtp__rcpt_to {
    view_label: "Events: Intermediary Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__smtp__rcpt_to}) as events__intermediary__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__resource {
    view_label: "Events: Intermediary File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__resource}) as events__intermediary__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__embedded_domains {
    view_label: "Events: Intermediary Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__embedded_domains}) as events__intermediary__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource__attribute__roles {
    view_label: "Events: Intermediary Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.resource__attribute__roles}) as events__intermediary__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource__attribute__labels {
    view_label: "Events: Intermediary Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.resource__attribute__labels}) as events__intermediary__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__group_identifiers {
    view_label: "Events: Intermediary Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__group_identifiers}) as events__intermediary__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__group_identifiers {
    view_label: "Events: Intermediary Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__group_identifiers}) as events__intermediary__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__smtp__rcpt_to {
    view_label: "Events: Security Result About Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__smtp__rcpt_to}) as events__security_result__about__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__email_addresses {
    view_label: "Events: Security Result About User Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__email_addresses}) as events__security_result__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__dns__additional {
    view_label: "Events: Target Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__dns__additional}) as events__target__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__dns__questions {
    view_label: "Events: Target Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__dns__questions}) as events__target__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__target__file__signature_info__sigcheck__signer {
    view_label: "Events: Target File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.target__file__signature_info__sigcheck__signer}) as events__target__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__target__resource__attribute__permissions {
    view_label: "Events: Target Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__resource__attribute__permissions}) as events__target__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__phone_numbers {
    view_label: "Events: Target User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.phone_numbers}) as events__target__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__embedded_ips {
    view_label: "Events: Target Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__embedded_ips}) as events__target__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__time_off {
    view_label: "Events: Target Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__time_off}) as events__target__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__attribute__roles {
    view_label: "Events: Target Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__attribute__roles}) as events__target__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__attribute__labels {
    view_label: "Events: Target Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__attribute__labels}) as events__target__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__group_identifiers {
    view_label: "Events: Target Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__group_identifiers}) as events__target__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Principal Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__email__bcc}) as events__principal__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__section {
    view_label: "Events: Principal Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__section}) as events__principal__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__time_off {
    view_label: "Events: Principal Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__time_off}) as events__principal__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__attribute__roles {
    view_label: "Events: Principal Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__attribute__roles}) as events__principal__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__attribute__labels {
    view_label: "Events: Principal Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__attribute__labels}) as events__principal__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__email_addresses {
    view_label: "Events: Principal Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__email_addresses}) as events__principal__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__email__to {
    view_label: "Events: Observer Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__email__to}) as events__observer__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__dns__authority {
    view_label: "Events: Observer Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__dns__authority}) as events__observer__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__dhcp__options {
    view_label: "Events: Observer Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__dhcp__options}) as events__observer__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__project__attribute__roles {
    view_label: "Events: Observer Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__project__attribute__roles}) as events__observer__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__project__attribute__labels {
    view_label: "Events: Observer Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__project__attribute__labels}) as events__observer__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__signature_info__signer {
    view_label: "Events: Observer File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__signature_info__signer}) as events__observer__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__observer__group__attribute__permissions {
    view_label: "Events: Observer Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__group__attribute__permissions}) as events__observer__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__metadata__enrichment_labels__ingestion_labels {
    view_label: "Events: Metadata Enrichment Labels Ingestion Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__enrichment_labels__ingestion_labels}) as events__metadata__enrichment_labels__ingestion_labels ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Src Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__dns__answers}) as events__src__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__src__resource_ancestors__attribute__roles {
    view_label: "Events: Src Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__src__resource_ancestors.attribute__roles}) as events__src__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__resource_ancestors__attribute__labels {
    view_label: "Events: Src Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__src__resource_ancestors.attribute__labels}) as events__src__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__group_identifiers {
    view_label: "Events: Src User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.group_identifiers}) as events__src__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__src__security_result__associations__alias {
    view_label: "Events: Src Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__src__security_result__associations.alias}) as events__src__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__embedded_domains {
    view_label: "Events: Src Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__embedded_domains}) as events__src__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__src__domain__admin__attribute__permissions {
    view_label: "Events: Src Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__domain__admin__attribute__permissions}) as events__src__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__email__subject {
    view_label: "Events: About Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__email__subject}) as events__about__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__smtp__server_response {
    view_label: "Events: About Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__smtp__server_response}) as events__about__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__resources_type_count {
    view_label: "Events: About File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__resources_type_count}) as events__about__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__signature_info__x509 {
    view_label: "Events: About File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__signature_info__x509}) as events__about__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__resource {
    view_label: "Events: About Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__resource}) as events__about__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__email_addresses {
    view_label: "Events: About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.email_addresses}) as events__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__email__subject {
    view_label: "Events: Intermediary Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__email__subject}) as events__intermediary__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__vpc__attribute__roles {
    view_label: "Events: Intermediary Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__vpc__attribute__roles}) as events__intermediary__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__vpc__attribute__labels {
    view_label: "Events: Intermediary Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__vpc__attribute__labels}) as events__intermediary__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__imports__functions {
    view_label: "Events: Intermediary File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__intermediary__file__pe_file__imports.functions}) as events__intermediary__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__capabilities_tags {
    view_label: "Events: Intermediary Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__capabilities_tags}) as events__intermediary__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__group_identifiers {
    view_label: "Events: Intermediary Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__group_identifiers}) as events__intermediary__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__email_addresses {
    view_label: "Events: Intermediary Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__email_addresses}) as events__intermediary__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__email__subject {
    view_label: "Events: Security Result About Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__email__subject}) as events__security_result__about__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__embedded_domains {
    view_label: "Events: Security Result About File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__embedded_domains}) as events__security_result__about__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource_ancestors {
    view_label: "Events: Security Result About Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events__security_result.about__resource_ancestors}) as events__security_result__about__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors {
    view_label: "Events: Security Result About Process Ancestors"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process_ancestors}) as events__security_result__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Target Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__smtp__rcpt_to}) as events__target__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__target__network__tls__client__supported_ciphers {
    view_label: "Events: Target Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.target__network__tls__client__supported_ciphers}) as events__target__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__target__cloud__vpc__attribute__permissions {
    view_label: "Events: Target Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__cloud__vpc__attribute__permissions}) as events__target__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__imports {
    view_label: "Events: Target Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__imports}) as events__target__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__target__security_result__detection_fields {
    view_label: "Events: Target Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__target__security_result.detection_fields}) as events__target__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__embedded_urls {
    view_label: "Events: Target Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__embedded_urls}) as events__target__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__email__to {
    view_label: "Events: Principal Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__email__to}) as events__principal__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__dns__authority {
    view_label: "Events: Principal Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__dns__authority}) as events__principal__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__dhcp__options {
    view_label: "Events: Principal Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__dhcp__options}) as events__principal__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__project__attribute__roles {
    view_label: "Events: Principal Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__project__attribute__roles}) as events__principal__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__project__attribute__labels {
    view_label: "Events: Principal Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__project__attribute__labels}) as events__principal__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__signature_info__signer {
    view_label: "Events: Principal File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__signature_info__signer}) as events__principal__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__principal__group__attribute__permissions {
    view_label: "Events: Principal Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__group__attribute__permissions}) as events__principal__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__dns__additional {
    view_label: "Events: Observer Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__dns__additional}) as events__observer__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__dns__questions {
    view_label: "Events: Observer Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__dns__questions}) as events__observer__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__observer__file__signature_info__sigcheck__signer {
    view_label: "Events: Observer File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.observer__file__signature_info__sigcheck__signer}) as events__observer__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__observer__resource__attribute__permissions {
    view_label: "Events: Observer Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__resource__attribute__permissions}) as events__observer__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__phone_numbers {
    view_label: "Events: Observer User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.phone_numbers}) as events__observer__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__embedded_ips {
    view_label: "Events: Observer Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__embedded_ips}) as events__observer__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__time_off {
    view_label: "Events: Observer Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__time_off}) as events__observer__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__attribute__roles {
    view_label: "Events: Observer Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__attribute__roles}) as events__observer__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__attribute__labels {
    view_label: "Events: Observer Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__attribute__labels}) as events__observer__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__group_identifiers {
    view_label: "Events: Observer Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__group_identifiers}) as events__observer__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__metadata__base_labels__ingestion_kv_labels {
    view_label: "Events: Metadata Base Labels Ingestion Kv Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__base_labels__ingestion_kv_labels}) as events__metadata__base_labels__ingestion_kv_labels ;;
    relationship: one_to_many
  }
  join: events__src__cloud__project__attribute__permissions {
    view_label: "Events: Src Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__cloud__project__attribute__permissions}) as events__src__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__signature_info__signers {
    view_label: "Events: Src File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__signature_info__signers}) as events__src__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__capabilities_tags {
    view_label: "Events: Src Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__capabilities_tags}) as events__src__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__about__file__signature_info__sigcheck__x509 {
    view_label: "Events: About File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__about.file__signature_info__sigcheck__x509}) as events__about__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__imports__functions {
    view_label: "Events: About Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__about__process__file__pe_file__imports.functions}) as events__about__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__command_line_history {
    view_label: "Events: About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.command_line_history}) as events__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__about__domain__tech__attribute__permissions {
    view_label: "Events: About Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.domain__tech__attribute__permissions}) as events__about__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__domain__zone__attribute__permissions {
    view_label: "Events: About Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.domain__zone__attribute__permissions}) as events__about__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__time_off {
    view_label: "Events: About Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__time_off}) as events__about__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__attribute__roles {
    view_label: "Events: About Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__attribute__roles}) as events__about__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__attribute__labels {
    view_label: "Events: About Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__attribute__labels}) as events__about__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__associations {
    view_label: "Events: Intermediary Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.associations}) as events__intermediary__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__rule_labels {
    view_label: "Events: Intermediary Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.rule_labels}) as events__intermediary__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__phone_numbers {
    view_label: "Events: Intermediary Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__phone_numbers}) as events__intermediary__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__software__permissions {
    view_label: "Events: Intermediary Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary__asset__software.permissions}) as events__intermediary__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__user__attribute__permissions {
    view_label: "Events: Intermediary User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.user__attribute__permissions}) as events__intermediary__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__capabilities_tags {
    view_label: "Events: Security Result About File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__capabilities_tags}) as events__security_result__about__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__department {
    view_label: "Events: Security Result About Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__department}) as events__security_result__about__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__department {
    view_label: "Events: Security Result About Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__department}) as events__security_result__about__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__security_result__about__investigation__comments {
    view_label: "Events: Security Result About Investigation Comments"
    sql: LEFT JOIN UNNEST(${events__security_result.about__investigation__comments}) as events__security_result__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__group_identifiers {
    view_label: "Events: Security Result About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__group_identifiers}) as events__security_result__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__attack_details__techniques {
    view_label: "Events: Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__security_result.attack_details__techniques}) as events__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__email__subject {
    view_label: "Events: Target Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__email__subject}) as events__target__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__smtp__server_response {
    view_label: "Events: Target Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__smtp__server_response}) as events__target__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__resources_type_count {
    view_label: "Events: Target File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__resources_type_count}) as events__target__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__signature_info__x509 {
    view_label: "Events: Target File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__signature_info__x509}) as events__target__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__resource {
    view_label: "Events: Target Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__resource}) as events__target__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__email_addresses {
    view_label: "Events: Target User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.email_addresses}) as events__target__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__dns__additional {
    view_label: "Events: Principal Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__dns__additional}) as events__principal__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__dns__questions {
    view_label: "Events: Principal Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__dns__questions}) as events__principal__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__principal__file__signature_info__sigcheck__signer {
    view_label: "Events: Principal File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.principal__file__signature_info__sigcheck__signer}) as events__principal__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__principal__resource__attribute__permissions {
    view_label: "Events: Principal Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__resource__attribute__permissions}) as events__principal__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__phone_numbers {
    view_label: "Events: Principal User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.phone_numbers}) as events__principal__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__embedded_ips {
    view_label: "Events: Principal Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__embedded_ips}) as events__principal__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__time_off {
    view_label: "Events: Principal Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__time_off}) as events__principal__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__attribute__roles {
    view_label: "Events: Principal Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__attribute__roles}) as events__principal__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__attribute__labels {
    view_label: "Events: Principal Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__attribute__labels}) as events__principal__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__group_identifiers {
    view_label: "Events: Principal Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__group_identifiers}) as events__principal__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Observer Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__smtp__rcpt_to}) as events__observer__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__observer__network__tls__client__supported_ciphers {
    view_label: "Events: Observer Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.observer__network__tls__client__supported_ciphers}) as events__observer__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__vpc__attribute__permissions {
    view_label: "Events: Observer Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__vpc__attribute__permissions}) as events__observer__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__imports {
    view_label: "Events: Observer Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__imports}) as events__observer__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__detection_fields {
    view_label: "Events: Observer Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.detection_fields}) as events__observer__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__embedded_urls {
    view_label: "Events: Observer Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__embedded_urls}) as events__observer__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__nat_ip {
    view_label: "Events: Extensions Vulns Vulnerabilities About Nat Ip"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__nat_ip}) as events__extensions__vulns__vulnerabilities__about__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Src Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__dns__authority}) as events__src__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Src Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__dhcp__options}) as events__src__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__resources_language_count {
    view_label: "Events: Src File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__resources_language_count}) as events__src__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__resources_type_count_str {
    view_label: "Events: Src File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__resources_type_count_str}) as events__src__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__src__file__signature_info__sigcheck__signers {
    view_label: "Events: Src File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.src__file__signature_info__sigcheck__signers}) as events__src__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__src__security_result__associations__country_code {
    view_label: "Events: Src Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__src__security_result__associations.country_code}) as events__src__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__src__security_result__attack_details__tactics {
    view_label: "Events: Src Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__src__security_result.attack_details__tactics}) as events__src__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__src__domain__billing__attribute__permissions {
    view_label: "Events: Src Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__domain__billing__attribute__permissions}) as events__src__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__dns__answers {
    view_label: "Events: About Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__dns__answers}) as events__about__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__about__resource_ancestors__attribute__roles {
    view_label: "Events: About Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about__resource_ancestors.attribute__roles}) as events__about__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__resource_ancestors__attribute__labels {
    view_label: "Events: About Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about__resource_ancestors.attribute__labels}) as events__about__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__group_identifiers {
    view_label: "Events: About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.group_identifiers}) as events__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__security_result__associations__alias {
    view_label: "Events: About Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__about__security_result__associations.alias}) as events__about__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__embedded_domains {
    view_label: "Events: About Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__embedded_domains}) as events__about__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__about__domain__admin__attribute__permissions {
    view_label: "Events: About Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.domain__admin__attribute__permissions}) as events__about__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__email__cc {
    view_label: "Events: Intermediary Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__email__cc}) as events__intermediary__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__dns__answers {
    view_label: "Events: Intermediary Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__dns__answers}) as events__intermediary__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__department {
    view_label: "Events: Intermediary User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.department}) as events__intermediary__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__category_details {
    view_label: "Events: Intermediary Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.category_details}) as events__intermediary__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__time_off {
    view_label: "Events: Intermediary Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__time_off}) as events__intermediary__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__attribute__roles {
    view_label: "Events: Intermediary Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__attribute__roles}) as events__intermediary__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__attribute__labels {
    view_label: "Events: Intermediary Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__attribute__labels}) as events__intermediary__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__group_identifiers {
    view_label: "Events: Intermediary Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__group_identifiers}) as events__intermediary__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__time_off {
    view_label: "Events: Intermediary Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__time_off}) as events__intermediary__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__attribute__roles {
    view_label: "Events: Intermediary Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__attribute__roles}) as events__intermediary__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__attribute__labels {
    view_label: "Events: Intermediary Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__attribute__labels}) as events__intermediary__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__asset__attribute__permissions {
    view_label: "Events: Intermediary Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.asset__attribute__permissions}) as events__intermediary__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__dns__answers {
    view_label: "Events: Security Result About Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__dns__answers}) as events__security_result__about__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__group__email_addresses {
    view_label: "Events: Security Result About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__group__email_addresses}) as events__security_result__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__department {
    view_label: "Events: Security Result About Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__department}) as events__security_result__about__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__target__file__signature_info__sigcheck__x509 {
    view_label: "Events: Target File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.target__file__signature_info__sigcheck__x509}) as events__target__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__imports__functions {
    view_label: "Events: Target Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__target__process__file__pe_file__imports.functions}) as events__target__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__command_line_history {
    view_label: "Events: Target Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.command_line_history}) as events__target__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__target__domain__tech__attribute__permissions {
    view_label: "Events: Target Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__domain__tech__attribute__permissions}) as events__target__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__domain__zone__attribute__permissions {
    view_label: "Events: Target Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__domain__zone__attribute__permissions}) as events__target__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__time_off {
    view_label: "Events: Target Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__time_off}) as events__target__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__attribute__roles {
    view_label: "Events: Target Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__attribute__roles}) as events__target__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__attribute__labels {
    view_label: "Events: Target Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__attribute__labels}) as events__target__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__network__http__parsed_user_agent__annotation {
    view_label: "Events: Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.network__http__parsed_user_agent__annotation}) as events__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Principal Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__smtp__rcpt_to}) as events__principal__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__principal__network__tls__client__supported_ciphers {
    view_label: "Events: Principal Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.principal__network__tls__client__supported_ciphers}) as events__principal__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__vpc__attribute__permissions {
    view_label: "Events: Principal Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__vpc__attribute__permissions}) as events__principal__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__imports {
    view_label: "Events: Principal Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__imports}) as events__principal__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__detection_fields {
    view_label: "Events: Principal Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.detection_fields}) as events__principal__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__embedded_urls {
    view_label: "Events: Principal Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__embedded_urls}) as events__principal__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__email__subject {
    view_label: "Events: Observer Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__email__subject}) as events__observer__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__smtp__server_response {
    view_label: "Events: Observer Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__smtp__server_response}) as events__observer__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__resources_type_count {
    view_label: "Events: Observer File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__resources_type_count}) as events__observer__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__signature_info__x509 {
    view_label: "Events: Observer File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__signature_info__x509}) as events__observer__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__resource {
    view_label: "Events: Observer Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__resource}) as events__observer__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__email_addresses {
    view_label: "Events: Observer User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.email_addresses}) as events__observer__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Src Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__dns__additional}) as events__src__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Src Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__dns__questions}) as events__src__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__signature_info__signer {
    view_label: "Events: Src Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__signature_info__signer}) as events__src__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__time_off {
    view_label: "Events: Src User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.time_off}) as events__src__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__attribute__roles {
    view_label: "Events: Src User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.attribute__roles}) as events__src__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__attribute__labels {
    view_label: "Events: Src User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.attribute__labels}) as events__src__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__cloud__project__attribute__permissions {
    view_label: "Events: About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.cloud__project__attribute__permissions}) as events__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__signature_info__signers {
    view_label: "Events: About File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__signature_info__signers}) as events__about__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__capabilities_tags {
    view_label: "Events: About Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__capabilities_tags}) as events__about__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Intermediary Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__email__bcc}) as events__intermediary__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__section {
    view_label: "Events: Intermediary Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__section}) as events__intermediary__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__time_off {
    view_label: "Events: Intermediary Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__time_off}) as events__intermediary__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__attribute__roles {
    view_label: "Events: Intermediary Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__attribute__roles}) as events__intermediary__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__attribute__labels {
    view_label: "Events: Intermediary Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__attribute__labels}) as events__intermediary__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__email_addresses {
    view_label: "Events: Intermediary Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__email_addresses}) as events__intermediary__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Target Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__dns__answers}) as events__target__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__target__resource_ancestors__attribute__roles {
    view_label: "Events: Target Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__target__resource_ancestors.attribute__roles}) as events__target__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__resource_ancestors__attribute__labels {
    view_label: "Events: Target Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__target__resource_ancestors.attribute__labels}) as events__target__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__group_identifiers {
    view_label: "Events: Target User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.group_identifiers}) as events__target__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__security_result__associations__alias {
    view_label: "Events: Target Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__target__security_result__associations.alias}) as events__target__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__embedded_domains {
    view_label: "Events: Target Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__embedded_domains}) as events__target__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__target__domain__admin__attribute__permissions {
    view_label: "Events: Target Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__domain__admin__attribute__permissions}) as events__target__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__email__subject {
    view_label: "Events: Principal Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__email__subject}) as events__principal__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__smtp__server_response {
    view_label: "Events: Principal Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__smtp__server_response}) as events__principal__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__resources_type_count {
    view_label: "Events: Principal File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__resources_type_count}) as events__principal__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__signature_info__x509 {
    view_label: "Events: Principal File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__signature_info__x509}) as events__principal__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__resource {
    view_label: "Events: Principal Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__resource}) as events__principal__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__email_addresses {
    view_label: "Events: Principal User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.email_addresses}) as events__principal__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__observer__file__signature_info__sigcheck__x509 {
    view_label: "Events: Observer File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.observer__file__signature_info__sigcheck__x509}) as events__observer__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__imports__functions {
    view_label: "Events: Observer Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__observer__process__file__pe_file__imports.functions}) as events__observer__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__command_line_history {
    view_label: "Events: Observer Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.command_line_history}) as events__observer__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__observer__domain__tech__attribute__permissions {
    view_label: "Events: Observer Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__domain__tech__attribute__permissions}) as events__observer__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__domain__zone__attribute__permissions {
    view_label: "Events: Observer Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__domain__zone__attribute__permissions}) as events__observer__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__time_off {
    view_label: "Events: Observer Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__time_off}) as events__observer__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__attribute__roles {
    view_label: "Events: Observer Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__attribute__roles}) as events__observer__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__attribute__labels {
    view_label: "Events: Observer Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__attribute__labels}) as events__observer__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__ip {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Ip"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__ip}) as events__extensions__vulns__vulnerabilities__about__asset__ip ;;
    relationship: one_to_many
  }
  join: events__src__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Src Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.src__process__file__signature_info__sigcheck__signer}) as events__src__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__section {
    view_label: "Events: Src Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__section}) as events__src__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__dns__authority {
    view_label: "Events: About Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__dns__authority}) as events__about__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: About Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__dhcp__options}) as events__about__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__resources_language_count {
    view_label: "Events: About File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__resources_language_count}) as events__about__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__resources_type_count_str {
    view_label: "Events: About File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__resources_type_count_str}) as events__about__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__about__file__signature_info__sigcheck__signers {
    view_label: "Events: About File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__about.file__signature_info__sigcheck__signers}) as events__about__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__about__security_result__associations__country_code {
    view_label: "Events: About Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__about__security_result__associations.country_code}) as events__about__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__about__security_result__attack_details__tactics {
    view_label: "Events: About Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__about__security_result.attack_details__tactics}) as events__about__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__about__domain__billing__attribute__permissions {
    view_label: "Events: About Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.domain__billing__attribute__permissions}) as events__about__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__email__to {
    view_label: "Events: Intermediary Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__email__to}) as events__intermediary__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__dns__authority {
    view_label: "Events: Intermediary Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__dns__authority}) as events__intermediary__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__dhcp__options {
    view_label: "Events: Intermediary Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__dhcp__options}) as events__intermediary__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__project__attribute__roles {
    view_label: "Events: Intermediary Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__project__attribute__roles}) as events__intermediary__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__project__attribute__labels {
    view_label: "Events: Intermediary Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__project__attribute__labels}) as events__intermediary__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__signature_info__signer {
    view_label: "Events: Intermediary File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__signature_info__signer}) as events__intermediary__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__group__attribute__permissions {
    view_label: "Events: Intermediary Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.group__attribute__permissions}) as events__intermediary__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__dns__authority {
    view_label: "Events: Security Result About Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__dns__authority}) as events__security_result__about__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__dhcp__options {
    view_label: "Events: Security Result About Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__dhcp__options}) as events__security_result__about__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__email__cc {
    view_label: "Events: Security Result About Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__email__cc}) as events__security_result__about__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__section {
    view_label: "Events: Security Result About File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__section}) as events__security_result__about__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__embedded_ips {
    view_label: "Events: Security Result About Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__embedded_ips}) as events__security_result__about__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__phone_numbers {
    view_label: "Events: Security Result About Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__phone_numbers}) as events__security_result__about__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__department {
    view_label: "Events: Security Result About Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__department}) as events__security_result__about__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__phone_numbers {
    view_label: "Events: Security Result About Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__phone_numbers}) as events__security_result__about__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__time_off {
    view_label: "Events: Security Result About User Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__time_off}) as events__security_result__about__user__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__attribute__roles {
    view_label: "Events: Security Result About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__attribute__roles}) as events__security_result__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__attribute__labels {
    view_label: "Events: Security Result About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__attribute__labels}) as events__security_result__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__cloud__project__attribute__permissions {
    view_label: "Events: Target Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__cloud__project__attribute__permissions}) as events__target__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__signature_info__signers {
    view_label: "Events: Target File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__signature_info__signers}) as events__target__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__capabilities_tags {
    view_label: "Events: Target Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__capabilities_tags}) as events__target__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__principal__file__signature_info__sigcheck__x509 {
    view_label: "Events: Principal File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.principal__file__signature_info__sigcheck__x509}) as events__principal__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__imports__functions {
    view_label: "Events: Principal Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__principal__process__file__pe_file__imports.functions}) as events__principal__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__command_line_history {
    view_label: "Events: Principal Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.command_line_history}) as events__principal__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__principal__domain__tech__attribute__permissions {
    view_label: "Events: Principal Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__domain__tech__attribute__permissions}) as events__principal__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__domain__zone__attribute__permissions {
    view_label: "Events: Principal Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__domain__zone__attribute__permissions}) as events__principal__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__time_off {
    view_label: "Events: Principal Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__time_off}) as events__principal__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__attribute__roles {
    view_label: "Events: Principal Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__attribute__roles}) as events__principal__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__attribute__labels {
    view_label: "Events: Principal Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__attribute__labels}) as events__principal__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Observer Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__dns__answers}) as events__observer__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__observer__resource_ancestors__attribute__roles {
    view_label: "Events: Observer Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__observer__resource_ancestors.attribute__roles}) as events__observer__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__resource_ancestors__attribute__labels {
    view_label: "Events: Observer Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__observer__resource_ancestors.attribute__labels}) as events__observer__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__group_identifiers {
    view_label: "Events: Observer User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.group_identifiers}) as events__observer__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__associations__alias {
    view_label: "Events: Observer Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__observer__security_result__associations.alias}) as events__observer__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__embedded_domains {
    view_label: "Events: Observer Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__embedded_domains}) as events__observer__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__observer__domain__admin__attribute__permissions {
    view_label: "Events: Observer Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__domain__admin__attribute__permissions}) as events__observer__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__tags}) as events__extensions__vulns__vulnerabilities__about__file__tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__mac {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Mac"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__mac}) as events__extensions__vulns__vulnerabilities__about__asset__mac ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Src Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__smtp__server_response}) as events__src__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__src__security_result__attack_details__techniques {
    view_label: "Events: Src Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__src__security_result.attack_details__techniques}) as events__src__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__src__domain__registrant__attribute__permissions {
    view_label: "Events: Src Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.src__domain__registrant__attribute__permissions}) as events__src__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__dns__additional {
    view_label: "Events: About Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__dns__additional}) as events__about__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__dns__questions {
    view_label: "Events: About Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__dns__questions}) as events__about__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__signature_info__signer {
    view_label: "Events: About Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__signature_info__signer}) as events__about__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__time_off {
    view_label: "Events: About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.time_off}) as events__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__attribute__roles {
    view_label: "Events: About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.attribute__roles}) as events__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__attribute__labels {
    view_label: "Events: About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.attribute__labels}) as events__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__dns__additional {
    view_label: "Events: Intermediary Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__dns__additional}) as events__intermediary__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__dns__questions {
    view_label: "Events: Intermediary Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__dns__questions}) as events__intermediary__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__signature_info__sigcheck__signer {
    view_label: "Events: Intermediary File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__signature_info__sigcheck__signer}) as events__intermediary__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource__attribute__permissions {
    view_label: "Events: Intermediary Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.resource__attribute__permissions}) as events__intermediary__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__phone_numbers {
    view_label: "Events: Intermediary User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.phone_numbers}) as events__intermediary__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__embedded_ips {
    view_label: "Events: Intermediary Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__embedded_ips}) as events__intermediary__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__time_off {
    view_label: "Events: Intermediary Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__time_off}) as events__intermediary__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__attribute__roles {
    view_label: "Events: Intermediary Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__attribute__roles}) as events__intermediary__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__attribute__labels {
    view_label: "Events: Intermediary Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__attribute__labels}) as events__intermediary__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__group_identifiers {
    view_label: "Events: Intermediary Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__group_identifiers}) as events__intermediary__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__associations__industries_affected {
    view_label: "Events: Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__security_result__associations.industries_affected}) as events__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__dns__additional {
    view_label: "Events: Security Result About Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__dns__additional}) as events__security_result__about__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__dns__questions {
    view_label: "Events: Security Result About Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__dns__questions}) as events__security_result__about__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__email__bcc {
    view_label: "Events: Security Result About Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__email__bcc}) as events__security_result__about__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__embedded_urls {
    view_label: "Events: Security Result About Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__embedded_urls}) as events__security_result__about__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__phone_numbers {
    view_label: "Events: Security Result About Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__phone_numbers}) as events__security_result__about__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__vulnerabilities {
    view_label: "Events: Security Result About Asset Vulnerabilities"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__vulnerabilities}) as events__security_result__about__asset__vulnerabilities ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__attribute__roles {
    view_label: "Events: Security Result About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__attribute__roles}) as events__security_result__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__attribute__labels {
    view_label: "Events: Security Result About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__attribute__labels}) as events__security_result__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Target Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__dns__authority}) as events__target__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Target Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__dhcp__options}) as events__target__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__resources_language_count {
    view_label: "Events: Target File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__resources_language_count}) as events__target__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__resources_type_count_str {
    view_label: "Events: Target File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__resources_type_count_str}) as events__target__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__target__file__signature_info__sigcheck__signers {
    view_label: "Events: Target File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.target__file__signature_info__sigcheck__signers}) as events__target__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__target__security_result__associations__country_code {
    view_label: "Events: Target Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__target__security_result__associations.country_code}) as events__target__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__target__security_result__attack_details__tactics {
    view_label: "Events: Target Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__target__security_result.attack_details__tactics}) as events__target__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__target__domain__billing__attribute__permissions {
    view_label: "Events: Target Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__domain__billing__attribute__permissions}) as events__target__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Principal Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__dns__answers}) as events__principal__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__principal__resource_ancestors__attribute__roles {
    view_label: "Events: Principal Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__principal__resource_ancestors.attribute__roles}) as events__principal__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__resource_ancestors__attribute__labels {
    view_label: "Events: Principal Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__principal__resource_ancestors.attribute__labels}) as events__principal__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__group_identifiers {
    view_label: "Events: Principal User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.group_identifiers}) as events__principal__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__associations__alias {
    view_label: "Events: Principal Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__principal__security_result__associations.alias}) as events__principal__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__embedded_domains {
    view_label: "Events: Principal Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__embedded_domains}) as events__principal__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__principal__domain__admin__attribute__permissions {
    view_label: "Events: Principal Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__domain__admin__attribute__permissions}) as events__principal__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__cloud__project__attribute__permissions {
    view_label: "Events: Observer Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__cloud__project__attribute__permissions}) as events__observer__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__signature_info__signers {
    view_label: "Events: Observer File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__signature_info__signers}) as events__observer__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__capabilities_tags {
    view_label: "Events: Observer Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__capabilities_tags}) as events__observer__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__names {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Names"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__names}) as events__extensions__vulns__vulnerabilities__about__file__names ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__labels}) as events__extensions__vulns__vulnerabilities__about__labels ;;
    relationship: one_to_many
  }
  join: events__src__network__http__parsed_user_agent__annotation {
    view_label: "Events: Src Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.src__network__http__parsed_user_agent__annotation}) as events__src__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Src Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__tls__client__supported_ciphers}) as events__src__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__src__file__pe_file__resources_language_count_str {
    view_label: "Events: Src File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.src__file__pe_file__resources_language_count_str}) as events__src__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__resources_type_count {
    view_label: "Events: Src Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__resources_type_count}) as events__src__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Src Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__signature_info__x509}) as events__src__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__src__resource_ancestors__attribute__permissions {
    view_label: "Events: Src Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__src__resource_ancestors.attribute__permissions}) as events__src__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__process__file__signature_info__sigcheck__signer {
    view_label: "Events: About Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__about.process__file__signature_info__sigcheck__signer}) as events__about__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__section {
    view_label: "Events: About Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__section}) as events__about__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Intermediary Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__smtp__rcpt_to}) as events__intermediary__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__tls__client__supported_ciphers {
    view_label: "Events: Intermediary Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__tls__client__supported_ciphers}) as events__intermediary__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__vpc__attribute__permissions {
    view_label: "Events: Intermediary Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__vpc__attribute__permissions}) as events__intermediary__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__imports {
    view_label: "Events: Intermediary Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__imports}) as events__intermediary__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__detection_fields {
    view_label: "Events: Intermediary Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.detection_fields}) as events__intermediary__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__embedded_urls {
    view_label: "Events: Intermediary Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__embedded_urls}) as events__intermediary__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__email__to {
    view_label: "Events: Security Result About Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__email__to}) as events__security_result__about__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain {
    view_label: "Events: Security Result About User Management Chain"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user_management_chain}) as events__security_result__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__tags {
    view_label: "Events: Security Result About Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__tags}) as events__security_result__about__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__email_addresses {
    view_label: "Events: Security Result About Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__email_addresses}) as events__security_result__about__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__email_addresses {
    view_label: "Events: Security Result About Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__email_addresses}) as events__security_result__about__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Target Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__dns__additional}) as events__target__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Target Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__dns__questions}) as events__target__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__signature_info__signer {
    view_label: "Events: Target Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__signature_info__signer}) as events__target__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__time_off {
    view_label: "Events: Target User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.time_off}) as events__target__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__attribute__roles {
    view_label: "Events: Target User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.attribute__roles}) as events__target__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__attribute__labels {
    view_label: "Events: Target User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.attribute__labels}) as events__target__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__cloud__project__attribute__permissions {
    view_label: "Events: Principal Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__cloud__project__attribute__permissions}) as events__principal__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__signature_info__signers {
    view_label: "Events: Principal File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__signature_info__signers}) as events__principal__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__capabilities_tags {
    view_label: "Events: Principal Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__capabilities_tags}) as events__principal__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Observer Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__dns__authority}) as events__observer__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Observer Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__dhcp__options}) as events__observer__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__resources_language_count {
    view_label: "Events: Observer File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__resources_language_count}) as events__observer__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__resources_type_count_str {
    view_label: "Events: Observer File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__resources_type_count_str}) as events__observer__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__observer__file__signature_info__sigcheck__signers {
    view_label: "Events: Observer File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.observer__file__signature_info__sigcheck__signers}) as events__observer__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__associations__country_code {
    view_label: "Events: Observer Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__observer__security_result__associations.country_code}) as events__observer__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__attack_details__tactics {
    view_label: "Events: Observer Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.attack_details__tactics}) as events__observer__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__observer__domain__billing__attribute__permissions {
    view_label: "Events: Observer Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__domain__billing__attribute__permissions}) as events__observer__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__metadata__enrichment_labels__ingestion_kv_labels {
    view_label: "Events: Metadata Enrichment Labels Ingestion Kv Labels"
    sql: LEFT JOIN UNNEST(${events.metadata__enrichment_labels__ingestion_kv_labels}) as events__metadata__enrichment_labels__ingestion_kv_labels ;;
    relationship: one_to_many
  }
  join: events__src__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Src Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.src__process__file__signature_info__sigcheck__x509}) as events__src__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__imports {
    view_label: "Events: Src Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__imports}) as events__src__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: About Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__smtp__server_response}) as events__about__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__about__security_result__attack_details__techniques {
    view_label: "Events: About Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__about__security_result.attack_details__techniques}) as events__about__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__about__domain__registrant__attribute__permissions {
    view_label: "Events: About Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about.domain__registrant__attribute__permissions}) as events__about__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__email__subject {
    view_label: "Events: Intermediary Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__email__subject}) as events__intermediary__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__smtp__server_response {
    view_label: "Events: Intermediary Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__smtp__server_response}) as events__intermediary__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__resources_type_count {
    view_label: "Events: Intermediary File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__resources_type_count}) as events__intermediary__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__signature_info__x509 {
    view_label: "Events: Intermediary File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__signature_info__x509}) as events__intermediary__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__resource {
    view_label: "Events: Intermediary Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__resource}) as events__intermediary__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__email_addresses {
    view_label: "Events: Intermediary User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.email_addresses}) as events__intermediary__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__smtp__server_response {
    view_label: "Events: Security Result About Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__smtp__server_response}) as events__security_result__about__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__imports {
    view_label: "Events: Security Result About File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__imports}) as events__security_result__about__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__security_result__about__group__attribute__roles {
    view_label: "Events: Security Result About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__group__attribute__roles}) as events__security_result__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__group__attribute__labels {
    view_label: "Events: Security Result About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__group__attribute__labels}) as events__security_result__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__command_line_history {
    view_label: "Events: Security Result About Process Command Line History"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__command_line_history}) as events__security_result__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__names {
    view_label: "Events: Security Result About Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__names}) as events__security_result__about__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__email_addresses {
    view_label: "Events: Security Result About Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__email_addresses}) as events__security_result__about__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__phone_numbers {
    view_label: "Events: Security Result About Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__phone_numbers}) as events__security_result__about__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__department {
    view_label: "Events: Security Result About Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__department}) as events__security_result__about__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__target__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Target Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.target__process__file__signature_info__sigcheck__signer}) as events__target__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__section {
    view_label: "Events: Target Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__section}) as events__target__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Principal Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__dns__authority}) as events__principal__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Principal Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__dhcp__options}) as events__principal__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__resources_language_count {
    view_label: "Events: Principal File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__resources_language_count}) as events__principal__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__resources_type_count_str {
    view_label: "Events: Principal File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__resources_type_count_str}) as events__principal__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__file__signature_info__sigcheck__signers {
    view_label: "Events: Principal File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.principal__file__signature_info__sigcheck__signers}) as events__principal__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__associations__country_code {
    view_label: "Events: Principal Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__principal__security_result__associations.country_code}) as events__principal__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__attack_details__tactics {
    view_label: "Events: Principal Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.attack_details__tactics}) as events__principal__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__principal__domain__billing__attribute__permissions {
    view_label: "Events: Principal Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__domain__billing__attribute__permissions}) as events__principal__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Observer Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__dns__additional}) as events__observer__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Observer Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__dns__questions}) as events__observer__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__signature_info__signer {
    view_label: "Events: Observer Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__signature_info__signer}) as events__observer__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__time_off {
    view_label: "Events: Observer User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.time_off}) as events__observer__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__attribute__roles {
    view_label: "Events: Observer User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.attribute__roles}) as events__observer__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__attribute__labels {
    view_label: "Events: Observer User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.attribute__labels}) as events__observer__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__nat_ip {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Nat Ip"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__nat_ip}) as events__extensions__vulns__vulnerabilities__about__asset__nat_ip ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__resource {
    view_label: "Events: Src Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__resource}) as events__src__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__about__network__http__parsed_user_agent__annotation {
    view_label: "Events: About Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__about.network__http__parsed_user_agent__annotation}) as events__about__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: About Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__tls__client__supported_ciphers}) as events__about__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__about__file__pe_file__resources_language_count_str {
    view_label: "Events: About File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__about.file__pe_file__resources_language_count_str}) as events__about__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__resources_type_count {
    view_label: "Events: About Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__resources_type_count}) as events__about__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__signature_info__x509 {
    view_label: "Events: About Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__signature_info__x509}) as events__about__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__about__resource_ancestors__attribute__permissions {
    view_label: "Events: About Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about__resource_ancestors.attribute__permissions}) as events__about__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__signature_info__sigcheck__x509 {
    view_label: "Events: Intermediary File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__signature_info__sigcheck__x509}) as events__intermediary__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__imports__functions {
    view_label: "Events: Intermediary Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__intermediary__process__file__pe_file__imports.functions}) as events__intermediary__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__command_line_history {
    view_label: "Events: Intermediary Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.command_line_history}) as events__intermediary__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__tech__attribute__permissions {
    view_label: "Events: Intermediary Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__tech__attribute__permissions}) as events__intermediary__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__zone__attribute__permissions {
    view_label: "Events: Intermediary Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__zone__attribute__permissions}) as events__intermediary__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__time_off {
    view_label: "Events: Intermediary Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__time_off}) as events__intermediary__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__attribute__roles {
    view_label: "Events: Intermediary Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__attribute__roles}) as events__intermediary__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__attribute__labels {
    view_label: "Events: Intermediary Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__attribute__labels}) as events__intermediary__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__smtp__rcpt_to {
    view_label: "Events: Security Result About Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__smtp__rcpt_to}) as events__security_result__about__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__resource {
    view_label: "Events: Security Result About File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__resource}) as events__security_result__about__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__embedded_domains {
    view_label: "Events: Security Result About Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__embedded_domains}) as events__security_result__about__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource__attribute__roles {
    view_label: "Events: Security Result About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__resource__attribute__roles}) as events__security_result__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource__attribute__labels {
    view_label: "Events: Security Result About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__resource__attribute__labels}) as events__security_result__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__group_identifiers {
    view_label: "Events: Security Result About Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__group_identifiers}) as events__security_result__about__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__group_identifiers {
    view_label: "Events: Security Result About Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__group_identifiers}) as events__security_result__about__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Target Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__smtp__server_response}) as events__target__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__target__security_result__attack_details__techniques {
    view_label: "Events: Target Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__target__security_result.attack_details__techniques}) as events__target__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__target__domain__registrant__attribute__permissions {
    view_label: "Events: Target Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.target__domain__registrant__attribute__permissions}) as events__target__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Principal Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__dns__additional}) as events__principal__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Principal Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__dns__questions}) as events__principal__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__signature_info__signer {
    view_label: "Events: Principal Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__signature_info__signer}) as events__principal__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__time_off {
    view_label: "Events: Principal User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.time_off}) as events__principal__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__attribute__roles {
    view_label: "Events: Principal User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.attribute__roles}) as events__principal__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__attribute__labels {
    view_label: "Events: Principal User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.attribute__labels}) as events__principal__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Observer Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__signature_info__sigcheck__signer}) as events__observer__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__section {
    view_label: "Events: Observer Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__section}) as events__observer__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__signature_info__signers {
    view_label: "Events: Src Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__signature_info__signers}) as events__src__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__src__user_management_chain__attribute__permissions {
    view_label: "Events: Src User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__src__user_management_chain.attribute__permissions}) as events__src__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__security_result__associations__industries_affected {
    view_label: "Events: Src Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__src__security_result__associations.industries_affected}) as events__src__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Src Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors__file__pe_file__imports.functions}) as events__src__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__about__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: About Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__about.process__file__signature_info__sigcheck__x509}) as events__about__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__imports {
    view_label: "Events: About Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__imports}) as events__about__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Intermediary Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__dns__answers}) as events__intermediary__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource_ancestors__attribute__roles {
    view_label: "Events: Intermediary Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary__resource_ancestors.attribute__roles}) as events__intermediary__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource_ancestors__attribute__labels {
    view_label: "Events: Intermediary Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary__resource_ancestors.attribute__labels}) as events__intermediary__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__group_identifiers {
    view_label: "Events: Intermediary User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.group_identifiers}) as events__intermediary__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__associations__alias {
    view_label: "Events: Intermediary Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result__associations.alias}) as events__intermediary__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__embedded_domains {
    view_label: "Events: Intermediary Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__embedded_domains}) as events__intermediary__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__admin__attribute__permissions {
    view_label: "Events: Intermediary Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__admin__attribute__permissions}) as events__intermediary__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__email__subject {
    view_label: "Events: Security Result About Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__email__subject}) as events__security_result__about__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__vpc__attribute__roles {
    view_label: "Events: Security Result About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__vpc__attribute__roles}) as events__security_result__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__vpc__attribute__labels {
    view_label: "Events: Security Result About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__vpc__attribute__labels}) as events__security_result__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__imports__functions {
    view_label: "Events: Security Result About File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__file__pe_file__imports.functions}) as events__security_result__about__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__capabilities_tags {
    view_label: "Events: Security Result About Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__capabilities_tags}) as events__security_result__about__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__group_identifiers {
    view_label: "Events: Security Result About Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__group_identifiers}) as events__security_result__about__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__email_addresses {
    view_label: "Events: Security Result About Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__email_addresses}) as events__security_result__about__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__network__http__parsed_user_agent__annotation {
    view_label: "Events: Target Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.target__network__http__parsed_user_agent__annotation}) as events__target__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Target Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__tls__client__supported_ciphers}) as events__target__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__target__file__pe_file__resources_language_count_str {
    view_label: "Events: Target File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.target__file__pe_file__resources_language_count_str}) as events__target__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__resources_type_count {
    view_label: "Events: Target Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__resources_type_count}) as events__target__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Target Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__signature_info__x509}) as events__target__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__target__resource_ancestors__attribute__permissions {
    view_label: "Events: Target Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__target__resource_ancestors.attribute__permissions}) as events__target__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Principal Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__signature_info__sigcheck__signer}) as events__principal__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__section {
    view_label: "Events: Principal Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__section}) as events__principal__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Observer Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__smtp__server_response}) as events__observer__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__attack_details__techniques {
    view_label: "Events: Observer Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.attack_details__techniques}) as events__observer__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__observer__domain__registrant__attribute__permissions {
    view_label: "Events: Observer Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.observer__domain__registrant__attribute__permissions}) as events__observer__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__resources_language_count {
    view_label: "Events: Src Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__resources_language_count}) as events__src__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Src Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__resources_type_count_str}) as events__src__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__src__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Src Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.src__process__file__signature_info__sigcheck__signers}) as events__src__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__resource {
    view_label: "Events: About Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__resource}) as events__about__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__intermediary__cloud__project__attribute__permissions {
    view_label: "Events: Intermediary Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.cloud__project__attribute__permissions}) as events__intermediary__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__signature_info__signers {
    view_label: "Events: Intermediary File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__signature_info__signers}) as events__intermediary__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__capabilities_tags {
    view_label: "Events: Intermediary Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__capabilities_tags}) as events__intermediary__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__phone_numbers {
    view_label: "Events: Security Result About Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__phone_numbers}) as events__security_result__about__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__software__permissions {
    view_label: "Events: Security Result About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__asset__software.permissions}) as events__security_result__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user__attribute__permissions {
    view_label: "Events: Security Result About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__user__attribute__permissions}) as events__security_result__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__security_result.verdict__verdict__mandiant_sources}) as events__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__target__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Target Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.target__process__file__signature_info__sigcheck__x509}) as events__target__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__imports {
    view_label: "Events: Target Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__imports}) as events__target__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Principal Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__smtp__server_response}) as events__principal__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__attack_details__techniques {
    view_label: "Events: Principal Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.attack_details__techniques}) as events__principal__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__principal__domain__registrant__attribute__permissions {
    view_label: "Events: Principal Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events.principal__domain__registrant__attribute__permissions}) as events__principal__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__network__http__parsed_user_agent__annotation {
    view_label: "Events: Observer Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.observer__network__http__parsed_user_agent__annotation}) as events__observer__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Observer Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__tls__client__supported_ciphers}) as events__observer__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__observer__file__pe_file__resources_language_count_str {
    view_label: "Events: Observer File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.observer__file__pe_file__resources_language_count_str}) as events__observer__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__resources_type_count {
    view_label: "Events: Observer Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__resources_type_count}) as events__observer__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Observer Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__signature_info__x509}) as events__observer__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__observer__resource_ancestors__attribute__permissions {
    view_label: "Events: Observer Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__observer__resource_ancestors.attribute__permissions}) as events__observer__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__department}) as events__extensions__vulns__vulnerabilities__about__user__department ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__signature_info__signers {
    view_label: "Events: About Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__signature_info__signers}) as events__about__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__about__user_management_chain__attribute__permissions {
    view_label: "Events: About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__about__user_management_chain.attribute__permissions}) as events__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__about__security_result__associations__industries_affected {
    view_label: "Events: About Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__about__security_result__associations.industries_affected}) as events__about__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: About Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors__file__pe_file__imports.functions}) as events__about__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Intermediary Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__dns__authority}) as events__intermediary__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Intermediary Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__dhcp__options}) as events__intermediary__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__resources_language_count {
    view_label: "Events: Intermediary File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__resources_language_count}) as events__intermediary__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__resources_type_count_str {
    view_label: "Events: Intermediary File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__resources_type_count_str}) as events__intermediary__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__signature_info__sigcheck__signers {
    view_label: "Events: Intermediary File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__signature_info__sigcheck__signers}) as events__intermediary__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__associations__country_code {
    view_label: "Events: Intermediary Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result__associations.country_code}) as events__intermediary__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__attack_details__tactics {
    view_label: "Events: Intermediary Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.attack_details__tactics}) as events__intermediary__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__billing__attribute__permissions {
    view_label: "Events: Intermediary Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__billing__attribute__permissions}) as events__intermediary__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__email__cc {
    view_label: "Events: Security Result About Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__email__cc}) as events__security_result__about__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__dns__answers {
    view_label: "Events: Security Result About Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__dns__answers}) as events__security_result__about__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__department {
    view_label: "Events: Security Result About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.department}) as events__security_result__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__time_off {
    view_label: "Events: Security Result About Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__time_off}) as events__security_result__about__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__attribute__roles {
    view_label: "Events: Security Result About Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__attribute__roles}) as events__security_result__about__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__attribute__labels {
    view_label: "Events: Security Result About Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__attribute__labels}) as events__security_result__about__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__group_identifiers {
    view_label: "Events: Security Result About Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__group_identifiers}) as events__security_result__about__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__time_off {
    view_label: "Events: Security Result About Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__time_off}) as events__security_result__about__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__attribute__roles {
    view_label: "Events: Security Result About Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__attribute__roles}) as events__security_result__about__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__attribute__labels {
    view_label: "Events: Security Result About Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__attribute__labels}) as events__security_result__about__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__asset__attribute__permissions {
    view_label: "Events: Security Result About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__asset__attribute__permissions}) as events__security_result__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__resource {
    view_label: "Events: Target Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__resource}) as events__target__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__principal__network__http__parsed_user_agent__annotation {
    view_label: "Events: Principal Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.principal__network__http__parsed_user_agent__annotation}) as events__principal__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Principal Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__tls__client__supported_ciphers}) as events__principal__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__principal__file__pe_file__resources_language_count_str {
    view_label: "Events: Principal File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.principal__file__pe_file__resources_language_count_str}) as events__principal__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__resources_type_count {
    view_label: "Events: Principal Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__resources_type_count}) as events__principal__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Principal Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__signature_info__x509}) as events__principal__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__resource_ancestors__attribute__permissions {
    view_label: "Events: Principal Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__principal__resource_ancestors.attribute__permissions}) as events__principal__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Observer Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__signature_info__sigcheck__x509}) as events__observer__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__imports {
    view_label: "Events: Observer Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__imports}) as events__observer__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__email__cc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__email__cc}) as events__extensions__vulns__vulnerabilities__about__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_location {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Location"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__ip_location}) as events__extensions__vulns__vulnerabilities__about__ip_location ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__labels}) as events__extensions__vulns__vulnerabilities__about__asset__labels ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__resources_language_count {
    view_label: "Events: About Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__resources_language_count}) as events__about__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__resources_type_count_str {
    view_label: "Events: About Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__resources_type_count_str}) as events__about__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__about__process__file__signature_info__sigcheck__signers {
    view_label: "Events: About Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__about.process__file__signature_info__sigcheck__signers}) as events__about__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Intermediary Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__dns__additional}) as events__intermediary__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Intermediary Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__dns__questions}) as events__intermediary__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__signature_info__signer {
    view_label: "Events: Intermediary Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__signature_info__signer}) as events__intermediary__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__time_off {
    view_label: "Events: Intermediary User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.time_off}) as events__intermediary__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__attribute__roles {
    view_label: "Events: Intermediary User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.attribute__roles}) as events__intermediary__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__attribute__labels {
    view_label: "Events: Intermediary User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.attribute__labels}) as events__intermediary__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Security Result About Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__email__bcc}) as events__security_result__about__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__section {
    view_label: "Events: Security Result About Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__section}) as events__security_result__about__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__time_off {
    view_label: "Events: Security Result About Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__time_off}) as events__security_result__about__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__attribute__roles {
    view_label: "Events: Security Result About Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__attribute__roles}) as events__security_result__about__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__attribute__labels {
    view_label: "Events: Security Result About Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__attribute__labels}) as events__security_result__about__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__email_addresses {
    view_label: "Events: Security Result About Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__email_addresses}) as events__security_result__about__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__signature_info__signers {
    view_label: "Events: Target Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__signature_info__signers}) as events__target__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__target__user_management_chain__attribute__permissions {
    view_label: "Events: Target User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__target__user_management_chain.attribute__permissions}) as events__target__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__security_result__associations__industries_affected {
    view_label: "Events: Target Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__target__security_result__associations.industries_affected}) as events__target__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Target Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors__file__pe_file__imports.functions}) as events__target__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Principal Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__signature_info__sigcheck__x509}) as events__principal__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__imports {
    view_label: "Events: Principal Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__imports}) as events__principal__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__resource {
    view_label: "Events: Observer Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__resource}) as events__observer__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__email__bcc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__email__bcc}) as events__extensions__vulns__vulnerabilities__about__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__embedded_ips {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__embedded_ips}) as events__extensions__vulns__vulnerabilities__about__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__tags}) as events__extensions__vulns__vulnerabilities__about__process__file__tags ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Src Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__src__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Src Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__signature_info__signer}) as events__src__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Intermediary Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__signature_info__sigcheck__signer}) as events__intermediary__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__section {
    view_label: "Events: Intermediary Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__section}) as events__intermediary__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__email__to {
    view_label: "Events: Security Result About Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__email__to}) as events__security_result__about__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__dns__authority {
    view_label: "Events: Security Result About Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__dns__authority}) as events__security_result__about__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__dhcp__options {
    view_label: "Events: Security Result About Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__dhcp__options}) as events__security_result__about__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__project__attribute__roles {
    view_label: "Events: Security Result About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__project__attribute__roles}) as events__security_result__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__project__attribute__labels {
    view_label: "Events: Security Result About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__project__attribute__labels}) as events__security_result__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__signature_info__signer {
    view_label: "Events: Security Result About File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__signature_info__signer}) as events__security_result__about__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__group__attribute__permissions {
    view_label: "Events: Security Result About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__group__attribute__permissions}) as events__security_result__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__security_result.verdict__verdict__third_party_sources}) as events__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__resources_language_count {
    view_label: "Events: Target Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__resources_language_count}) as events__target__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Target Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__resources_type_count_str}) as events__target__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__target__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Target Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.target__process__file__signature_info__sigcheck__signers}) as events__target__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__resource {
    view_label: "Events: Principal Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__resource}) as events__principal__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__signature_info__signers {
    view_label: "Events: Observer Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__signature_info__signers}) as events__observer__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__observer__user_management_chain__attribute__permissions {
    view_label: "Events: Observer User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__observer__user_management_chain.attribute__permissions}) as events__observer__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__associations__industries_affected {
    view_label: "Events: Observer Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__observer__security_result__associations.industries_affected}) as events__observer__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Observer Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors__file__pe_file__imports.functions}) as events__observer__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__ip_geo_artifact}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__email__to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Email To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__email__to}) as events__extensions__vulns__vulnerabilities__about__network__email__to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__embedded_urls {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__embedded_urls}) as events__extensions__vulns__vulnerabilities__about__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__names {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Names"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__names}) as events__extensions__vulns__vulnerabilities__about__process__file__names ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__name_server {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Name Server"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__name_server}) as events__extensions__vulns__vulnerabilities__about__domain__name_server ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__hardware {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Hardware"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__hardware}) as events__extensions__vulns__vulnerabilities__about__asset__hardware ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__user__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__src__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Src Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.src__process__file__pe_file__resources_language_count_str}) as events__src__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__src__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Src Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__src__security_result.verdict__verdict__mandiant_sources}) as events__src__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Src Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__signature_info__sigcheck__signer}) as events__src__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Intermediary Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__smtp__server_response}) as events__intermediary__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__attack_details__techniques {
    view_label: "Events: Intermediary Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.attack_details__techniques}) as events__intermediary__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__intermediary__domain__registrant__attribute__permissions {
    view_label: "Events: Intermediary Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary.domain__registrant__attribute__permissions}) as events__intermediary__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__dns__additional {
    view_label: "Events: Security Result About Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__dns__additional}) as events__security_result__about__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__dns__questions {
    view_label: "Events: Security Result About Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__dns__questions}) as events__security_result__about__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__signature_info__sigcheck__signer {
    view_label: "Events: Security Result About File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__signature_info__sigcheck__signer}) as events__security_result__about__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource__attribute__permissions {
    view_label: "Events: Security Result About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__resource__attribute__permissions}) as events__security_result__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__phone_numbers {
    view_label: "Events: Security Result About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.phone_numbers}) as events__security_result__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__embedded_ips {
    view_label: "Events: Security Result About Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__embedded_ips}) as events__security_result__about__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__time_off {
    view_label: "Events: Security Result About Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__time_off}) as events__security_result__about__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__attribute__roles {
    view_label: "Events: Security Result About Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__attribute__roles}) as events__security_result__about__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__attribute__labels {
    view_label: "Events: Security Result About Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__attribute__labels}) as events__security_result__about__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__group_identifiers {
    view_label: "Events: Security Result About Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__group_identifiers}) as events__security_result__about__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__signature_info__signers {
    view_label: "Events: Principal Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__signature_info__signers}) as events__principal__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__principal__user_management_chain__attribute__permissions {
    view_label: "Events: Principal User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__principal__user_management_chain.attribute__permissions}) as events__principal__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__associations__industries_affected {
    view_label: "Events: Principal Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__principal__security_result__associations.industries_affected}) as events__principal__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Principal Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors__file__pe_file__imports.functions}) as events__principal__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__resources_language_count {
    view_label: "Events: Observer Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__resources_language_count}) as events__observer__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Observer Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__resources_type_count_str}) as events__observer__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Observer Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__signature_info__sigcheck__signers}) as events__observer__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__software {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Software"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__software}) as events__extensions__vulns__vulnerabilities__about__asset__software ;;
    relationship: one_to_many
  }
  join: events__src__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Src Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.src__artifact__network__http__parsed_user_agent__annotation}) as events__src__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: About Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__about__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: About Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__signature_info__signer}) as events__about__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__network__http__parsed_user_agent__annotation {
    view_label: "Events: Intermediary Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__intermediary.network__http__parsed_user_agent__annotation}) as events__intermediary__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Intermediary Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__tls__client__supported_ciphers}) as events__intermediary__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__intermediary__file__pe_file__resources_language_count_str {
    view_label: "Events: Intermediary File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary.file__pe_file__resources_language_count_str}) as events__intermediary__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__resources_type_count {
    view_label: "Events: Intermediary Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__resources_type_count}) as events__intermediary__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Intermediary Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__signature_info__x509}) as events__intermediary__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__resource_ancestors__attribute__permissions {
    view_label: "Events: Intermediary Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary__resource_ancestors.attribute__permissions}) as events__intermediary__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Security Result About Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__smtp__rcpt_to}) as events__security_result__about__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__tls__client__supported_ciphers {
    view_label: "Events: Security Result About Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__tls__client__supported_ciphers}) as events__security_result__about__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__vpc__attribute__permissions {
    view_label: "Events: Security Result About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__vpc__attribute__permissions}) as events__security_result__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__imports {
    view_label: "Events: Security Result About Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__imports}) as events__security_result__about__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__embedded_urls {
    view_label: "Events: Security Result About Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__embedded_urls}) as events__security_result__about__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__resources_language_count {
    view_label: "Events: Principal Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__resources_language_count}) as events__principal__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Principal Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__resources_type_count_str}) as events__principal__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Principal Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__signature_info__sigcheck__signers}) as events__principal__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__smtp__rcpt_to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__smtp__rcpt_to}) as events__extensions__vulns__vulnerabilities__about__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__email_addresses}) as events__extensions__vulns__vulnerabilities__about__user__email_addresses ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Src Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__resources_type_count}) as events__src__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Src Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__signature_info__x509}) as events__src__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__about__process__file__pe_file__resources_language_count_str {
    view_label: "Events: About Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__about.process__file__pe_file__resources_language_count_str}) as events__about__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__about__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: About Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__about__security_result.verdict__verdict__mandiant_sources}) as events__about__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: About Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__signature_info__sigcheck__signer}) as events__about__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Intermediary Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__signature_info__sigcheck__x509}) as events__intermediary__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__imports {
    view_label: "Events: Intermediary Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__imports}) as events__intermediary__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__email__subject {
    view_label: "Events: Security Result About Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__email__subject}) as events__security_result__about__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__smtp__server_response {
    view_label: "Events: Security Result About Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__smtp__server_response}) as events__security_result__about__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__resources_type_count {
    view_label: "Events: Security Result About File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__resources_type_count}) as events__security_result__about__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__signature_info__x509 {
    view_label: "Events: Security Result About File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__signature_info__x509}) as events__security_result__about__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__resource {
    view_label: "Events: Security Result About Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__resource}) as events__security_result__about__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__email_addresses {
    view_label: "Events: Security Result About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.email_addresses}) as events__security_result__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Target Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__target__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Target Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__signature_info__signer}) as events__target__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__email__subject {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__email__subject}) as events__extensions__vulns__vulnerabilities__about__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__embedded_domains {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__embedded_domains}) as events__extensions__vulns__vulnerabilities__about__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource_ancestors {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Ancestors"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__resource_ancestors}) as events__extensions__vulns__vulnerabilities__about__resource_ancestors ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process_ancestors}) as events__extensions__vulns__vulnerabilities__about__process_ancestors ;;
    relationship: one_to_many
  }
  join: events__src__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Src Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__src__security_result.verdict__verdict__third_party_sources}) as events__src__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Src Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__signature_info__sigcheck__x509}) as events__src__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__about__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: About Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__about.artifact__network__http__parsed_user_agent__annotation}) as events__about__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__resource {
    view_label: "Events: Intermediary Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__resource}) as events__intermediary__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__signature_info__sigcheck__x509 {
    view_label: "Events: Security Result About File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__signature_info__sigcheck__x509}) as events__security_result__about__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__imports__functions {
    view_label: "Events: Security Result About Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process__file__pe_file__imports.functions}) as events__security_result__about__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__command_line_history {
    view_label: "Events: Security Result About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.command_line_history}) as events__security_result__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__tech__attribute__permissions {
    view_label: "Events: Security Result About Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__tech__attribute__permissions}) as events__security_result__about__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__zone__attribute__permissions {
    view_label: "Events: Security Result About Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__zone__attribute__permissions}) as events__security_result__about__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__time_off {
    view_label: "Events: Security Result About Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__time_off}) as events__security_result__about__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__attribute__roles {
    view_label: "Events: Security Result About Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__attribute__roles}) as events__security_result__about__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__attribute__labels {
    view_label: "Events: Security Result About Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__attribute__labels}) as events__security_result__about__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__target__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Target Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.target__process__file__pe_file__resources_language_count_str}) as events__target__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__target__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Target Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__target__security_result.verdict__verdict__mandiant_sources}) as events__target__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Target Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__signature_info__sigcheck__signer}) as events__target__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Observer Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__observer__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Observer Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__signature_info__signer}) as events__observer__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__capabilities_tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__capabilities_tags}) as events__extensions__vulns__vulnerabilities__about__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__action {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Action"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__security_result__action}) as events__extensions__vulns__vulnerabilities__about__security_result__action ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__department}) as events__extensions__vulns__vulnerabilities__about__domain__tech__department ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__department}) as events__extensions__vulns__vulnerabilities__about__domain__zone__department ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__investigation__comments {
    view_label: "Events: Extensions Vulns Vulnerabilities About Investigation Comments"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__investigation__comments}) as events__extensions__vulns__vulnerabilities__about__investigation__comments ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__user__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: About Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__resources_type_count}) as events__about__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: About Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__signature_info__x509}) as events__about__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__signature_info__signers {
    view_label: "Events: Intermediary Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__signature_info__signers}) as events__intermediary__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__intermediary__user_management_chain__attribute__permissions {
    view_label: "Events: Intermediary User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__intermediary__user_management_chain.attribute__permissions}) as events__intermediary__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__associations__industries_affected {
    view_label: "Events: Intermediary Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result__associations.industries_affected}) as events__intermediary__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Intermediary Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors__file__pe_file__imports.functions}) as events__intermediary__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Security Result About Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__dns__answers}) as events__security_result__about__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource_ancestors__attribute__roles {
    view_label: "Events: Security Result About Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result__about__resource_ancestors.attribute__roles}) as events__security_result__about__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource_ancestors__attribute__labels {
    view_label: "Events: Security Result About Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result__about__resource_ancestors.attribute__labels}) as events__security_result__about__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__group_identifiers {
    view_label: "Events: Security Result About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.group_identifiers}) as events__security_result__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__embedded_domains {
    view_label: "Events: Security Result About Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__embedded_domains}) as events__security_result__about__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__admin__attribute__permissions {
    view_label: "Events: Security Result About Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__admin__attribute__permissions}) as events__security_result__about__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Target Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.target__artifact__network__http__parsed_user_agent__annotation}) as events__target__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Principal Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__principal__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Principal Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__signature_info__signer}) as events__principal__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__observer__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Observer Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.observer__process__file__pe_file__resources_language_count_str}) as events__observer__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Observer Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.verdict__verdict__mandiant_sources}) as events__observer__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Observer Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__signature_info__sigcheck__signer}) as events__observer__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__dns__answers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__dns__answers}) as events__extensions__vulns__vulnerabilities__about__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__group__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Group Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__group__email_addresses}) as events__extensions__vulns__vulnerabilities__about__group__email_addresses ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__security_result}) as events__extensions__vulns__vulnerabilities__about__security_result ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__department}) as events__extensions__vulns__vulnerabilities__about__domain__admin__department ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Src Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__signature_info__signers}) as events__src__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__about__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: About Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__about__security_result.verdict__verdict__third_party_sources}) as events__about__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: About Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__signature_info__sigcheck__x509}) as events__about__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__resources_language_count {
    view_label: "Events: Intermediary Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__resources_language_count}) as events__intermediary__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Intermediary Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__resources_type_count_str}) as events__intermediary__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Intermediary Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__signature_info__sigcheck__signers}) as events__intermediary__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__cloud__project__attribute__permissions {
    view_label: "Events: Security Result About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__cloud__project__attribute__permissions}) as events__security_result__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__signature_info__signers {
    view_label: "Events: Security Result About File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__signature_info__signers}) as events__security_result__about__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__capabilities_tags {
    view_label: "Events: Security Result About Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__capabilities_tags}) as events__security_result__about__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Target Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__resources_type_count}) as events__target__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Target Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__signature_info__x509}) as events__target__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Principal Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events.principal__process__file__pe_file__resources_language_count_str}) as events__principal__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Principal Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.verdict__verdict__mandiant_sources}) as events__principal__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Principal Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__signature_info__sigcheck__signer}) as events__principal__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__observer__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Observer Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.observer__artifact__network__http__parsed_user_agent__annotation}) as events__observer__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__category {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Category"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.category}) as events__extensions__vulns__vulnerabilities__about__security_result__category ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Src Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__resources_language_count}) as events__src__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Src Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__resources_type_count_str}) as events__src__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Src Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__signature_info__sigcheck__signers}) as events__src__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Security Result About Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__dns__authority}) as events__security_result__about__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Security Result About Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__dhcp__options}) as events__security_result__about__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__resources_language_count {
    view_label: "Events: Security Result About File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__resources_language_count}) as events__security_result__about__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__resources_type_count_str {
    view_label: "Events: Security Result About File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__resources_type_count_str}) as events__security_result__about__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__signature_info__sigcheck__signers {
    view_label: "Events: Security Result About File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__signature_info__sigcheck__signers}) as events__security_result__about__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__billing__attribute__permissions {
    view_label: "Events: Security Result About Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__billing__attribute__permissions}) as events__security_result__about__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Target Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__target__security_result.verdict__verdict__third_party_sources}) as events__target__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Target Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__signature_info__sigcheck__x509}) as events__target__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__principal__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Principal Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events.principal__artifact__network__http__parsed_user_agent__annotation}) as events__principal__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Observer Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__resources_type_count}) as events__observer__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Observer Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__signature_info__x509}) as events__observer__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__dns__authority {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__dns__authority}) as events__extensions__vulns__vulnerabilities__about__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__dhcp__options {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__dhcp__options}) as events__extensions__vulns__vulnerabilities__about__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__email__cc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__email__cc}) as events__extensions__vulns__vulnerabilities__about__artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__section {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__section}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__embedded_ips {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__embedded_ips}) as events__extensions__vulns__vulnerabilities__about__process__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__campaigns {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Campaigns"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.campaigns}) as events__extensions__vulns__vulnerabilities__about__security_result__campaigns ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__domain__tech__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__department}) as events__extensions__vulns__vulnerabilities__about__domain__billing__department ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__domain__zone__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__time_off}) as events__extensions__vulns__vulnerabilities__about__user__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__user__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__user__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: About Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__signature_info__signers}) as events__about__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Security Result About Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__dns__additional}) as events__security_result__about__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Security Result About Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__dns__questions}) as events__security_result__about__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__signature_info__signer {
    view_label: "Events: Security Result About Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__signature_info__signer}) as events__security_result__about__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__time_off {
    view_label: "Events: Security Result About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.time_off}) as events__security_result__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__attribute__roles {
    view_label: "Events: Security Result About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.attribute__roles}) as events__security_result__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__attribute__labels {
    view_label: "Events: Security Result About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.attribute__labels}) as events__security_result__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Principal Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__resources_type_count}) as events__principal__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Principal Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__signature_info__x509}) as events__principal__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__observer__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Observer Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__observer__security_result.verdict__verdict__third_party_sources}) as events__observer__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Observer Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__signature_info__sigcheck__x509}) as events__observer__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__dns__additional {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__dns__additional}) as events__extensions__vulns__vulnerabilities__about__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__dns__questions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__dns__questions}) as events__extensions__vulns__vulnerabilities__about__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__email__bcc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__email__bcc}) as events__extensions__vulns__vulnerabilities__about__artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__embedded_urls {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__embedded_urls}) as events__extensions__vulns__vulnerabilities__about__process__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__domain__admin__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__asset__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__asset__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__src__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Src Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__src__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__src__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: About Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__resources_language_count}) as events__about__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: About Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__resources_type_count_str}) as events__about__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: About Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__signature_info__sigcheck__signers}) as events__about__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Intermediary Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__intermediary__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Intermediary Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__signature_info__signer}) as events__intermediary__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Security Result About Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__signature_info__sigcheck__signer}) as events__security_result__about__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__section {
    view_label: "Events: Security Result About Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__section}) as events__security_result__about__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Target Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__signature_info__signers}) as events__target__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__principal__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Principal Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__principal__security_result.verdict__verdict__third_party_sources}) as events__principal__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Principal Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__signature_info__sigcheck__x509}) as events__principal__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__email__to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__email__to}) as events__extensions__vulns__vulnerabilities__about__artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user_management_chain}) as events__extensions__vulns__vulnerabilities__about__user_management_chain ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__tags}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__email_addresses}) as events__extensions__vulns__vulnerabilities__about__domain__tech__email_addresses ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__email_addresses}) as events__extensions__vulns__vulnerabilities__about__domain__zone__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Intermediary Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary.process__file__pe_file__resources_language_count_str}) as events__intermediary__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Intermediary Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.verdict__verdict__mandiant_sources}) as events__intermediary__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Intermediary Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__signature_info__sigcheck__signer}) as events__intermediary__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Security Result About Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__smtp__server_response}) as events__security_result__about__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__security_result__about__domain__registrant__attribute__permissions {
    view_label: "Events: Security Result About Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result.about__domain__registrant__attribute__permissions}) as events__security_result__about__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Target Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__resources_language_count}) as events__target__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Target Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__resources_type_count_str}) as events__target__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Target Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__signature_info__sigcheck__signers}) as events__target__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Observer Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__signature_info__signers}) as events__observer__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__smtp__server_response {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__smtp__server_response}) as events__extensions__vulns__vulnerabilities__about__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__imports {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__imports}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__group__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Group Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__group__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__group__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__group__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Group Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__group__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__group__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__command_line_history {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Command Line History"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__command_line_history}) as events__extensions__vulns__vulnerabilities__about__process__command_line_history ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__outcomes {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Outcomes"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.outcomes}) as events__extensions__vulns__vulnerabilities__about__security_result__outcomes ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__names {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Names"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__names}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__names ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__email_addresses}) as events__extensions__vulns__vulnerabilities__about__domain__admin__email_addresses ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__domain__billing__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__department}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__department ;;
    relationship: one_to_many
  }
  join: events__src__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Src Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__src__process_ancestors.file__pe_file__resources_language_count_str}) as events__src__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__about__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: About Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__about__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__about__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__intermediary__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Intermediary Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__intermediary.artifact__network__http__parsed_user_agent__annotation}) as events__intermediary__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__security_result__about__network__http__parsed_user_agent__annotation {
    view_label: "Events: Security Result About Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__security_result.about__network__http__parsed_user_agent__annotation}) as events__security_result__about__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Security Result About Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__tls__client__supported_ciphers}) as events__security_result__about__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__file__pe_file__resources_language_count_str {
    view_label: "Events: Security Result About File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result.about__file__pe_file__resources_language_count_str}) as events__security_result__about__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__resources_type_count {
    view_label: "Events: Security Result About Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__resources_type_count}) as events__security_result__about__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Security Result About Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__signature_info__x509}) as events__security_result__about__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__resource_ancestors__attribute__permissions {
    view_label: "Events: Security Result About Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__resource_ancestors.attribute__permissions}) as events__security_result__about__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Principal Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__signature_info__signers}) as events__principal__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Observer Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__resources_language_count}) as events__observer__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Observer Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__resources_type_count_str}) as events__observer__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Observer Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__signature_info__sigcheck__signers}) as events__observer__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__smtp__rcpt_to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__smtp__rcpt_to}) as events__extensions__vulns__vulnerabilities__about__artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__resource {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__resource}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__embedded_domains {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__embedded_domains}) as events__extensions__vulns__vulnerabilities__about__process__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__resource__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__resource__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__resource__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__resource__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__domain__tech__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__domain__zone__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Intermediary Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__resources_type_count}) as events__intermediary__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Intermediary Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__signature_info__x509}) as events__intermediary__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Security Result About Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__signature_info__sigcheck__x509}) as events__security_result__about__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__imports {
    view_label: "Events: Security Result About Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__imports}) as events__security_result__about__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__target__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Target Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__target__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__target__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Principal Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__resources_language_count}) as events__principal__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Principal Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__resources_type_count_str}) as events__principal__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Principal Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__signature_info__sigcheck__signers}) as events__principal__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__email__subject {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__email__subject}) as events__extensions__vulns__vulnerabilities__about__artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__imports__functions {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__file__pe_file__imports.functions}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__capabilities_tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__capabilities_tags}) as events__extensions__vulns__vulnerabilities__about__process__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__domain__admin__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__email_addresses}) as events__extensions__vulns__vulnerabilities__about__domain__billing__email_addresses ;;
    relationship: one_to_many
  }
  join: events__about__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: About Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__about__process_ancestors.file__pe_file__resources_language_count_str}) as events__about__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Intermediary Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__intermediary__security_result.verdict__verdict__third_party_sources}) as events__intermediary__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Intermediary Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__signature_info__sigcheck__x509}) as events__intermediary__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__resource {
    view_label: "Events: Security Result About Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__resource}) as events__security_result__about__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__observer__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Observer Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__observer__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__observer__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__associations {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Associations"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.associations}) as events__extensions__vulns__vulnerabilities__about__security_result__associations ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__rule_labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Rule Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.rule_labels}) as events__extensions__vulns__vulnerabilities__about__security_result__rule_labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__phone_numbers}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__software__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Software Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__asset__software.permissions}) as events__extensions__vulns__vulnerabilities__about__asset__software__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__user__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__user__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__signature_info__signers {
    view_label: "Events: Security Result About Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__signature_info__signers}) as events__security_result__about__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__user_management_chain__attribute__permissions {
    view_label: "Events: Security Result About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__user_management_chain.attribute__permissions}) as events__security_result__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Security Result About Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors__file__pe_file__imports.functions}) as events__security_result__about__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__target__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Target Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__target__process_ancestors.file__pe_file__resources_language_count_str}) as events__target__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__principal__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Principal Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__principal__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__principal__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__cc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Email Cc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__email__cc}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__cc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__dns__answers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__dns__answers}) as events__extensions__vulns__vulnerabilities__about__artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__department {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Department"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.department}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__department ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__category_details {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Category Details"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.category_details}) as events__extensions__vulns__vulnerabilities__about__security_result__category_details ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__time_off}) as events__extensions__vulns__vulnerabilities__about__domain__tech__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__domain__billing__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__time_off}) as events__extensions__vulns__vulnerabilities__about__domain__zone__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Asset Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__asset__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__asset__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Intermediary Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__signature_info__signers}) as events__intermediary__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__resources_language_count {
    view_label: "Events: Security Result About Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__resources_language_count}) as events__security_result__about__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Security Result About Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__resources_type_count_str}) as events__security_result__about__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Security Result About Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__signature_info__sigcheck__signers}) as events__security_result__about__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__observer__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Observer Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__observer__process_ancestors.file__pe_file__resources_language_count_str}) as events__observer__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__bcc {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Email Bcc"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__email__bcc}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__bcc ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__section {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__section}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__time_off}) as events__extensions__vulns__vulnerabilities__about__domain__admin__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__email_addresses}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Intermediary Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__resources_language_count}) as events__intermediary__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Intermediary Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__resources_type_count_str}) as events__intermediary__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Intermediary Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__signature_info__sigcheck__signers}) as events__intermediary__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__principal__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Principal Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__principal__process_ancestors.file__pe_file__resources_language_count_str}) as events__principal__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Email To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__email__to}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__dns__authority {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__dns__authority}) as events__extensions__vulns__vulnerabilities__about__artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__dhcp__options {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__dhcp__options}) as events__extensions__vulns__vulnerabilities__about__artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__signature_info__signer}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__group__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Group Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__group__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__group__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__dns__additional {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__dns__additional}) as events__extensions__vulns__vulnerabilities__about__artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__dns__questions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__dns__questions}) as events__extensions__vulns__vulnerabilities__about__artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__signature_info__sigcheck__signer}) as events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__resource__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__resource__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Phone Numbers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.phone_numbers}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__phone_numbers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_ips {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Embedded Ips"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__embedded_ips}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_ips ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__time_off}) as events__extensions__vulns__vulnerabilities__about__domain__billing__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__group_identifiers}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__intermediary__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Intermediary Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__intermediary__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__intermediary__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Security Result About Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__security_result__about__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Security Result About Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__signature_info__signer}) as events__security_result__about__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__smtp__rcpt_to {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Smtp Rcpt To"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__smtp__rcpt_to}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__smtp__rcpt_to ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__tls__client__supported_ciphers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__tls__client__supported_ciphers}) as events__extensions__vulns__vulnerabilities__about__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Vpc Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__vpc__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__cloud__vpc__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__imports {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__imports}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__detection_fields {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Detection Fields"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.detection_fields}) as events__extensions__vulns__vulnerabilities__about__security_result__detection_fields ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_urls {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Embedded Urls"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__embedded_urls}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_urls ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Security Result About Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result.about__process__file__pe_file__resources_language_count_str}) as events__security_result__about__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Security Result About Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__signature_info__sigcheck__signer}) as events__security_result__about__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__subject {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Email Subject"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__email__subject}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__email__subject ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__smtp__server_response {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__smtp__server_response}) as events__extensions__vulns__vulnerabilities__about__artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_type_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__resources_type_count}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__signature_info__x509}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resource {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__resource}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Email Addresses"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.email_addresses}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__email_addresses ;;
    relationship: one_to_many
  }
  join: events__intermediary__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Intermediary Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__intermediary__process_ancestors.file__pe_file__resources_language_count_str}) as events__intermediary__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Security Result About Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__security_result.about__artifact__network__http__parsed_user_agent__annotation}) as events__security_result__about__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__signature_info__sigcheck__x509}) as events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__imports__functions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process__file__pe_file__imports.functions}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors Command Line History"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.command_line_history}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__command_line_history ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Tech Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__tech__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__domain__tech__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Zone Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__zone__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__domain__zone__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__time_off}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__attribute__roles}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__attribute__labels}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Security Result About Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__resources_type_count}) as events__security_result__about__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Security Result About Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__signature_info__x509}) as events__security_result__about__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__answers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Dns Answers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__dns__answers}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__answers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Ancestors Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__resource_ancestors.attribute__roles}) as events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Ancestors Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__resource_ancestors.attribute__labels}) as events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Group Identifiers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.group_identifiers}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__group_identifiers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__associations__alias {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Associations Alias"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result__associations.alias}) as events__extensions__vulns__vulnerabilities__about__security_result__associations__alias ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_domains {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Embedded Domains"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__embedded_domains}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__embedded_domains ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Admin Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__admin__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__domain__admin__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Security Result About Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__signature_info__sigcheck__x509}) as events__security_result__about__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Cloud Project Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__cloud__project__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__cloud__project__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__signature_info__signers}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__capabilities_tags {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Capabilities Tags"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__capabilities_tags}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__capabilities_tags ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__authority {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Dns Authority"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__dns__authority}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__authority ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dhcp__options {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Dhcp Options"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__dhcp__options}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dhcp__options ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_language_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__resources_language_count}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_type_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__resources_type_count_str}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__signature_info__sigcheck__signers}) as events__extensions__vulns__vulnerabilities__about__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__associations__country_code {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Associations Country Code"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result__associations.country_code}) as events__extensions__vulns__vulnerabilities__about__security_result__associations__country_code ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__attack_details__tactics {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Attack Details Tactics"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.attack_details__tactics}) as events__extensions__vulns__vulnerabilities__about__security_result__attack_details__tactics ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Billing Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__billing__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__domain__billing__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Security Result About Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__signature_info__signers}) as events__security_result__about__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__additional {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Dns Additional"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__dns__additional}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__additional ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__questions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Dns Questions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__dns__questions}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__dns__questions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__signature_info__signer}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Time Off"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.time_off}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__time_off ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Roles"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__roles}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__roles ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Labels"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__labels}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__labels ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Security Result About Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__resources_language_count}) as events__security_result__about__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Security Result About Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__resources_type_count_str}) as events__security_result__about__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Security Result About Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__signature_info__sigcheck__signers}) as events__security_result__about__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__signature_info__sigcheck__signer}) as events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__section {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Section"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__section}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__section ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__smtp__server_response {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Smtp Server Response"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__smtp__server_response}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__smtp__server_response ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__attack_details__techniques {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Attack Details Techniques"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.attack_details__techniques}) as events__extensions__vulns__vulnerabilities__about__security_result__attack_details__techniques ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Domain Registrant Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__domain__registrant__attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__domain__registrant__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__security_result__about__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Security Result About Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__security_result__about__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__security_result__about__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__network__http__parsed_user_agent__annotation {
    view_label: "Events: Extensions Vulns Vulnerabilities About Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__network__http__parsed_user_agent__annotation}) as events__extensions__vulns__vulnerabilities__about__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__tls__client__supported_ciphers}) as events__extensions__vulns__vulnerabilities__about__artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_language_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__file__pe_file__resources_language_count_str}) as events__extensions__vulns__vulnerabilities__about__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_type_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__resources_type_count}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__signature_info__x509}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Resource Ancestors Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__resource_ancestors.attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__resource_ancestors__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__signature_info__sigcheck__x509}) as events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__imports {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Imports"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__imports}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__imports ;;
    relationship: one_to_many
  }
  join: events__security_result__about__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Security Result About Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__security_result__about__process_ancestors.file__pe_file__resources_language_count_str}) as events__security_result__about__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resource {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Resource"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__resource}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resource ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__signature_info__signers}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions {
    view_label: "Events: Extensions Vulns Vulnerabilities About User Management Chain Attribute Permissions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__user_management_chain.attribute__permissions}) as events__extensions__vulns__vulnerabilities__about__user_management_chain__attribute__permissions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__associations__industries_affected {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Associations Industries Affected"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result__associations.industries_affected}) as events__extensions__vulns__vulnerabilities__about__security_result__associations__industries_affected ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__imports__functions {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Imports Functions"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__imports.functions}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__imports__functions ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_language_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__resources_language_count}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_type_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__resources_type_count_str}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__signature_info__sigcheck__signers}) as events__extensions__vulns__vulnerabilities__about__process__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__tls__client__supported_ciphers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Tls Client Supported Ciphers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__tls__client__supported_ciphers}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__tls__client__supported_ciphers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Signature Info Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__signature_info__signer}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_language_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__process__file__pe_file__resources_language_count_str}) as events__extensions__vulns__vulnerabilities__about__process__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__verdict__verdict__mandiant_sources {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Verdict Verdict Mandiant Sources"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.verdict__verdict__mandiant_sources}) as events__extensions__vulns__vulnerabilities__about__security_result__verdict__verdict__mandiant_sources ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__signer {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Signature Info Sigcheck Signer"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__signature_info__sigcheck__signer}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__signer ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Extensions Vulns Vulnerabilities About Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities.about__artifact__network__http__parsed_user_agent__annotation}) as events__extensions__vulns__vulnerabilities__about__artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_type_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Resources Type Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__resources_type_count}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_type_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Signature Info X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__signature_info__x509}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__security_result__verdict__verdict__third_party_sources {
    view_label: "Events: Extensions Vulns Vulnerabilities About Security Result Verdict Verdict Third Party Sources"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__security_result.verdict__verdict__third_party_sources}) as events__extensions__vulns__vulnerabilities__about__security_result__verdict__verdict__third_party_sources ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__x509 {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Signature Info Sigcheck X509"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__signature_info__sigcheck__x509}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__x509 ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Signature Info Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__signature_info__signers}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__signature_info__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_language_count {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Resources Language Count"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__resources_language_count}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_language_count ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_type_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Resources Type Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__resources_type_count_str}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_type_count_str ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__signers {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Signature Info Sigcheck Signers"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__signature_info__sigcheck__signers}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__signature_info__sigcheck__signers ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__http__parsed_user_agent__annotation {
    view_label: "Events: Extensions Vulns Vulnerabilities About Ip Geo Artifact Network Http Parsed User Agent Annotation"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__ip_geo_artifact.network__http__parsed_user_agent__annotation}) as events__extensions__vulns__vulnerabilities__about__ip_geo_artifact__network__http__parsed_user_agent__annotation ;;
    relationship: one_to_many
  }
  join: events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_language_count_str {
    view_label: "Events: Extensions Vulns Vulnerabilities About Process Ancestors File Pe File Resources Language Count Str"
    sql: LEFT JOIN UNNEST(${events__extensions__vulns__vulnerabilities__about__process_ancestors.file__pe_file__resources_language_count_str}) as events__extensions__vulns__vulnerabilities__about__process_ancestors__file__pe_file__resources_language_count_str ;;
    relationship: one_to_many
  }
}
explore: Viewing {}
explore: pci {}
explore: pci_scorecard {}
