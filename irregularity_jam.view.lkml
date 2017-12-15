view: irregularity_jam {
  sql_table_name: public.irregularity_jam ;;

  dimension: irregularity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.irregularity_id ;;
  }

  dimension: jam_uuid {
    type: string
    sql: ${TABLE}.jam_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [irregularity.id]
  }
}
