view: irregularity_alert {
  sql_table_name: public.irregularity_alert ;;

  dimension: alert_uuid {
    type: string
    sql: ${TABLE}.alert_uuid ;;
  }

  dimension: irregularity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.irregularity_id ;;
  }

  measure: count {
    type: count
    drill_fields: [irregularity.id]
  }
}
