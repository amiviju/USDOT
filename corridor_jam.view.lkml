view: corridor_jam {
  sql_table_name: public.corridor_jam ;;

  dimension: corridor_id {
    type: string
    sql: ${TABLE}.corridor_id ;;
  }

  dimension: jam_uuid {
    type: string
    sql: ${TABLE}.jam_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
