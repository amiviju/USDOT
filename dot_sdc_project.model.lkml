connection: "sdc_redshift_dev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: dot_sdc_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dot_sdc_project_default_datagroup

explore: alert {}

explore: corridor_alert {}

explore: corridor_jam {}

explore: corridor_point_sequence {}

explore: corridor_reading {}

explore: irregularity {
  join: irregularity_point_sequence {
    type: left_outer
    sql_on: ${irregularity.id} = ${irregularity_point_sequence.irregularity_id} ;;
    relationship: one_to_many
  }
}

explore: irregularity_alert {
  join: irregularity {
    type: left_outer
    sql_on: ${irregularity_alert.irregularity_id} = ${irregularity.id} ;;
    relationship: many_to_one
  }
}

explore: irregularity_jam {
  join: irregularity {
    type: left_outer
    sql_on: ${irregularity_jam.irregularity_id} = ${irregularity.id} ;;
    relationship: many_to_one
  }
}

explore: irregularity_point_sequence {
  join: irregularity {
    type: left_outer
    sql_on: ${irregularity_point_sequence.irregularity_id} = ${irregularity.id} ;;
    relationship: many_to_one
  }
}

explore: jam {}

explore: jam_point_sequence {
  join: jam {
    type: left_outer
    sql_on: ${jam_point_sequence.jam_id} = ${jam.id} ;;
    relationship: many_to_one
  }
}
