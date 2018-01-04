view: jam {
  sql_table_name: public.jam ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: blocking_alert_uuid {
    type: string
    sql: ${TABLE}.blocking_alert_uuid ;;
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

  dimension: delay {
    type: string
    sql: ${TABLE}.delay ;;
  }

  dimension: end_node {
    type: string
    sql: ${TABLE}.end_node ;;
  }

  dimension: jam_length {
    type: string
    sql: ${TABLE}.jam_length ;;
  }

  dimension: jam_type {
    type: string
    sql: ${TABLE}.jam_type ;;
  }

  dimension: jam_uuid {
    type: string
    sql: ${TABLE}.jam_uuid ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.level ;;
  }

  dimension: pub_millis {
    type: string
    sql: ${TABLE}.pub_millis ;;
  }

  dimension: pub_utc_epoch_week {
    type: string
    sql: ${TABLE}.pub_utc_epoch_week ;;
  }

  dimension_group: pub_utc_timestamp {
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
    sql: ${TABLE}.pub_utc_timestamp ;;
  }

  dimension: road_type {
    type: string
    sql: ${TABLE}.road_type ;;
  }

  dimension: speed {
    type: string
    sql: ${TABLE}.speed ;;
  }

  dimension: start_node {
    type: string
    sql: ${TABLE}.start_node ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: turn_line {
    type: string
    sql: ${TABLE}.turn_line ;;
  }

  dimension: turn_type {
    type: string
    sql: ${TABLE}.turn_type ;;
  }

  dimension: jam_location {
    type: location
    sql_longitude: ${jam_point_sequence.location_x} ;;
    sql_latitude: ${jam_point_sequence.location_y} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, jam_point_sequence.count]
  }
}
