view: stripe_subscriptions {
  sql_table_name: stripeblook.stripe_subscriptions ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _rjm_batched_at {
    type: number
    sql: ${TABLE}._rjm_batched_at ;;
  }

  dimension: cancel_at_period_end {
    type: yesno
    sql: ${TABLE}.cancel_at_period_end ;;
  }

  dimension_group: canceled_at {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.canceled_at ;;
  }

  dimension_group: current_period_end {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.current_period_end ;;
  }

  dimension_group: current_period_start {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.current_period_start ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension_group: ended_at {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.ended_at ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  # Plan object. https://stripe.com/docs/api/curl#create_plan

  dimension: plan__amount {
    type: number
    sql: ${TABLE}.plan__amount / 100 ;;
  }

  dimension_group: plan__created {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.plan__created ;;
  }

  dimension: plan__currency {
    type: string
    sql: ${TABLE}.plan__currency ;;
  }

  dimension: plan__id {
    type: string
    sql: ${TABLE}.plan__id ;;
  }

  dimension: plan__interval {
    type: string
    sql: ${TABLE}.plan__interval ;;
  }

  dimension: plan__interval_count {
    type: number
    sql: ${TABLE}.plan__interval_count ;;
  }

  dimension: plan__livemode {
    type: yesno
    sql: ${TABLE}.plan__livemode ;;
  }

  dimension: plan__name {
    type: string
    sql: ${TABLE}.plan__name ;;
  }

  dimension: plan__object {
    type: string
    sql: ${TABLE}.plan__object ;;
  }

  dimension: plan__trial_period_days {
    type: number
    sql: ${TABLE}.plan__trial_period_days ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension_group: start {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.start ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: trial_end {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.trial_end ;;
  }

  dimension_group: trial_start {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.trial_start ;;
  }

  measure: sum_of_plan_amount {
    type: sum
    sql: ${plan__amount} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, plan__name]
  }
}

#   - measure: new_mrr
#     type: sum
#     sql: ${plan__amount}
