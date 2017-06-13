view: stripe_balance_history__fee_details {
  sql_table_name: stripe_demo.stripe_balance_history__fee_details ;;

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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}