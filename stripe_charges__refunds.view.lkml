view: stripe_charges__refunds {
  sql_table_name: stripeblook.stripe_charges__refunds ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

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

  dimension: balance_transaction {
    type: string
    sql: ${TABLE}.balance_transaction ;;
  }

  dimension: charge {
    type: string
    sql: ${TABLE}.charge ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
