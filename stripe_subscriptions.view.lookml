- view: stripe_subscriptions
  sql_table_name: stripeblook.stripe_subscriptions
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: cancel_at_period_end
    type: yesno
    sql: ${TABLE}.cancel_at_period_end

  - dimension: canceled_at
    type: number
    sql: ${TABLE}.canceled_at

  - dimension: current_period_end
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.current_period_end

  - dimension: current_period_start
    type: number
    sql: ${TABLE}.current_period_start

  - dimension: customer
    type: string
    sql: ${TABLE}.customer

  - dimension: ended_at
    type: number
    sql: ${TABLE}.ended_at

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension: plan__amount
    type: number
    sql: ${TABLE}.plan__amount

  - dimension: plan__created
    type: number
    sql: ${TABLE}.plan__created

  - dimension: plan__currency
    type: string
    sql: ${TABLE}.plan__currency

  - dimension: plan__id
    type: string
    sql: ${TABLE}.plan__id

  - dimension: plan__interval
    type: string
    sql: ${TABLE}.plan__interval

  - dimension: plan__interval_count
    type: number
    sql: ${TABLE}.plan__interval_count

  - dimension: plan__livemode
    type: yesno
    sql: ${TABLE}.plan__livemode

  - dimension: plan__name
    type: string
    sql: ${TABLE}.plan__name

  - dimension: plan__object
    type: string
    sql: ${TABLE}.plan__object

  - dimension: plan__trial_period_days
    type: number
    sql: ${TABLE}.plan__trial_period_days

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: start
    type: number
    sql: ${TABLE}.start

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: trial_end
    type: number
    sql: ${TABLE}.trial_end

  - dimension: trial_start
    type: number
    sql: ${TABLE}.trial_start

  - measure: count
    type: count
    drill_fields: [id, plan__name]

