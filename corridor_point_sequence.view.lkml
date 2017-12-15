view: corridor_point_sequence {
  sql_table_name: public.corridor_point_sequence ;;

  dimension: corridor_id {
    type: string
    sql: ${TABLE}.corridor_id ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.location_y ;;
    sql_longitude: ${TABLE}.location_x ;;
  }

  dimension: sequence_order {
    type: string
    sql: ${TABLE}.sequence_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
