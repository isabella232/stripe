view: stripe_invoices {
  sql_table_name: stripeblook.stripe_invoices ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _rjm_batched_at {
    type: number
    sql: ${TABLE}._rjm_batched_at ;;
  }

  dimension: amount_due {
    type: number
    sql: ${TABLE}.amount_due ;;
  }

  dimension: attempt_count {
    type: number
    sql: ${TABLE}.attempt_count ;;
  }

  dimension: attempted {
    type: yesno
    sql: ${TABLE}.attempted ;;
  }

  dimension: charge {
    type: string
    sql: ${TABLE}.charge ;;
  }

  dimension: closed {
    type: yesno
    sql: ${TABLE}.closed ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension_group: date {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date ;;
  }

  dimension: ending_balance {
    type: number
    sql: ${TABLE}.ending_balance ;;
  }

  dimension: forgiven {
    type: yesno
    sql: ${TABLE}.forgiven ;;
  }

  dimension: lines__count {
    type: number
    sql: ${TABLE}.lines__count ;;
  }

  dimension: lines__has_more {
    type: yesno
    sql: ${TABLE}.lines__has_more ;;
  }

  dimension: lines__object {
    type: string
    sql: ${TABLE}.lines__object ;;
  }

  dimension: lines__total_count {
    type: number
    sql: ${TABLE}.lines__total_count ;;
  }

  dimension: lines__url {
    type: string
    sql: ${TABLE}.lines__url ;;
  }

  dimension: livemode {
    type: yesno
    sql: ${TABLE}.livemode ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: paid {
    type: yesno
    sql: ${TABLE}.paid ;;
  }

  dimension: payment {
    type: string
    sql: ${TABLE}.payment ;;
  }

  dimension_group: period_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period_end ;;
  }

  dimension_group: period_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period_start ;;
  }

  dimension: receipt_number {
    type: string
    sql: ${TABLE}.receipt_number ;;
  }

  dimension: starting_balance {
    type: number
    sql: ${TABLE}.starting_balance ;;
  }

  dimension: subscription {
    type: string
    sql: ${TABLE}.subscription ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension_group: webhooks_delivered {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.webhooks_delivered_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
