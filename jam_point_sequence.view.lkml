view: jam_point_sequence {
  sql_table_name: public.jam_point_sequence ;;

  dimension: jam_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.jam_id ;;
  }

  dimension: location_x {
    type: string
    sql: ${TABLE}.location_x ;;
  }

  dimension: location_y {
    type: string
    sql: ${TABLE}.location_y ;;
  }

  dimension: sequence_order {
    type: string
    sql: ${TABLE}.sequence_order ;;
  }

  measure: count {
    type: count
    drill_fields: [jam.id]
  }
}
