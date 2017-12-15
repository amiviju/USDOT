view: corridor_alert {
  sql_table_name: public.corridor_alert ;;

  dimension: alert_uuid {
    type: string
    sql: ${TABLE}.alert_uuid ;;
  }

  dimension: corridor_id {
    type: string
    sql: ${TABLE}.corridor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
