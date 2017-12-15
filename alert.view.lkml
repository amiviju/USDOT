view: alert {
  sql_table_name: public.alert ;;

  dimension: alert_type {
    type: string
    sql: ${TABLE}.alert_type ;;
  }

  dimension: alert_uuid {
    type: string
    sql: ${TABLE}.alert_uuid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.confidence ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: jam_uuid {
    type: string
    sql: ${TABLE}.jam_uuid ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.location_lat ;;
    sql_longitude: ${TABLE}.location_lon ;;
  }

  dimension: magvar {
    type: string
    sql: ${TABLE}.magvar ;;
  }

  dimension: num_thumbsup {
    type: string
    sql: ${TABLE}.num_thumbsup ;;
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

  dimension: reliability {
    type: string
    sql: ${TABLE}.reliability ;;
  }

  dimension: report_description {
    type: string
    sql: ${TABLE}.report_description ;;
  }

  dimension: report_rating {
    type: string
    sql: ${TABLE}.report_rating ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}.sub_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
