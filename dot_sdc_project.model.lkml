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

explore: corridor_reading {
  join: corridor_point_sequence {
    type: left_outer
    sql_on: ${corridor_reading.corridor_id} = ${corridor_point_sequence.corridor_id} ;;
    relationship: one_to_many
  }

  join: corridor_alert {
    type: left_outer
    sql_on: ${corridor_reading.corridor_id} = ${corridor_alert.corridor_id} ;;
    relationship: one_to_many
  }

  join: corridor_jam {
    type: left_outer
    sql_on: ${corridor_reading.corridor_id} = ${corridor_jam.corridor_id} ;;
    relationship: one_to_many
  }
}

explore: irregularity {
  join: irregularity_point_sequence {
    type: left_outer
    sql_on: ${irregularity.id} = ${irregularity_point_sequence.irregularity_id} ;;
    relationship: one_to_many
  }

  join: irregularity_alert {
    type: left_outer
    sql_on: ${irregularity_alert.irregularity_id} = ${irregularity.id} ;;
    relationship: one_to_many
  }

  join: irregularity_jam {
    type: left_outer
    sql_on: ${irregularity_jam.irregularity_id} = ${irregularity.id} ;;
    relationship: one_to_many
  }

}

explore: jam {
  join: jam_point_sequence {
    type: left_outer
    sql_on: ${jam.id} = ${jam_point_sequence.jam_id} ;;
    relationship: one_to_many
  }
}
