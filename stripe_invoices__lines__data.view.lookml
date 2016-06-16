- view: stripe_invoices__lines__data
  sql_table_name: stripeblook.stripe_invoices__lines__data
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: _rjm_level_0_id
    type: number
    sql: ${TABLE}._rjm_level_0_id

  - dimension: _rjm_source_key_id
    type: string
    sql: ${TABLE}._rjm_source_key_id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension: discountable
    type: yesno
    sql: ${TABLE}.discountable

  - dimension: livemode
    type: yesno
    sql: ${TABLE}.livemode

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension_group: period__end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period__end

  - dimension_group: period__start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period__start

  - dimension: plan__amount
    type: number
    sql: ${TABLE}.plan__amount

  - dimension_group: plan__created
    type: time
    timeframes: [time, date, week, month]
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

  - dimension: proration
    type: yesno
    sql: ${TABLE}.proration

  - dimension: quantity
    type: number
    sql: ${TABLE}.quantity

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, plan__name]

