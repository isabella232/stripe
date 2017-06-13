view: stripe_events__data__object__available {
  sql_table_name: stripe_demo.stripe_events__data__object__available ;;

  dimension: _rjm_batched_at {
    type: number
    sql: ${TABLE}._rjm_batched_at ;;
  }

  dimension: _rjm_level_0_id {
    type: number
    sql: ${TABLE}._rjm_level_0_id ;;
  }

  dimension: _rjm_source_key_id {
    type: string
    sql: ${TABLE}._rjm_source_key_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}