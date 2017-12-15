view: irregularity {
  sql_table_name: public.irregularity ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: alerts_count {
    type: string
    sql: ${TABLE}.alerts_count ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: delay_seconds {
    type: string
    sql: ${TABLE}.delay_seconds ;;
  }

  dimension: detection_date {
    type: string
    sql: ${TABLE}.detection_date ;;
  }

  dimension: detection_millis {
    type: string
    sql: ${TABLE}.detection_millis ;;
  }

  dimension: detection_utc_epoch_week {
    type: string
    sql: ${TABLE}.detection_utc_epoch_week ;;
  }

  dimension_group: detection_utc_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.detection_utc_timestamp ;;
  }

  dimension: drivers_count {
    type: string
    sql: ${TABLE}.drivers_count ;;
  }

  dimension: end_node {
    type: string
    sql: ${TABLE}.end_node ;;
  }

  dimension: highway {
    type: string
    sql: ${TABLE}.highway ;;
  }

  dimension: irregularity_length {
    type: string
    sql: ${TABLE}.irregularity_length ;;
  }

  dimension: irregularity_type {
    type: string
    sql: ${TABLE}.irregularity_type ;;
  }

  dimension: jam_level {
    type: string
    sql: ${TABLE}.jam_level ;;
  }

  dimension: num_comments {
    type: string
    sql: ${TABLE}.num_comments ;;
  }

  dimension: num_images {
    type: string
    sql: ${TABLE}.num_images ;;
  }

  dimension: num_thumbsup {
    type: string
    sql: ${TABLE}.num_thumbsup ;;
  }

  dimension: regular_speed {
    type: string
    sql: ${TABLE}.regular_speed ;;
  }

  dimension: seconds {
    type: string
    sql: ${TABLE}.seconds ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: speed {
    type: string
    sql: ${TABLE}.speed ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: trend {
    type: string
    sql: ${TABLE}.trend ;;
  }

  dimension: update_date {
    type: string
    sql: ${TABLE}.update_date ;;
  }

  dimension: update_millis {
    type: string
    sql: ${TABLE}.update_millis ;;
  }

  dimension: update_utc_epoch_week {
    type: string
    sql: ${TABLE}.update_utc_epoch_week ;;
  }

  dimension_group: update_utc_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_utc_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [id, irregularity_alert.count, irregularity_jam.count, irregularity_point_sequence.count]
  }
}
