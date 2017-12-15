view: corridor_reading {
  sql_table_name: public.corridor_reading ;;

  dimension: bbox_maxx {
    type: string
    sql: ${TABLE}.bbox_maxx ;;
  }

  dimension: bbox_maxy {
    type: string
    sql: ${TABLE}.bbox_maxy ;;
  }

  dimension: bbox_minx {
    type: string
    sql: ${TABLE}.bbox_minx ;;
  }

  dimension: bbox_miny {
    type: string
    sql: ${TABLE}.bbox_miny ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: corridor_from_name {
    type: string
    sql: ${TABLE}.corridor_from_name ;;
  }

  dimension: corridor_id {
    type: string
    sql: ${TABLE}.corridor_id ;;
  }

  dimension: corridor_name {
    type: string
    sql: ${TABLE}.corridor_name ;;
  }

  dimension: corridor_to_name {
    type: string
    sql: ${TABLE}.corridor_to_name ;;
  }

  dimension: corridor_type {
    type: string
    sql: ${TABLE}.corridor_type ;;
  }

  dimension: delay {
    type: string
    sql: ${TABLE}.delay ;;
  }

  dimension: historic_speed {
    type: string
    sql: ${TABLE}.historic_speed ;;
  }

  dimension: historic_travel_time {
    type: string
    sql: ${TABLE}.historic_travel_time ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
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

  dimension: speed {
    type: string
    sql: ${TABLE}.speed ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: travel_time {
    type: string
    sql: ${TABLE}.travel_time ;;
  }

  dimension: update_millis {
    type: string
    sql: ${TABLE}.update_millis ;;
  }

  measure: count {
    type: count
    drill_fields: [partner_name, corridor_name, corridor_to_name, corridor_from_name]
  }
}
