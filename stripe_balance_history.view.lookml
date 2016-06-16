- view: stripe_balance_history
  sql_table_name: stripeblook.stripe_balance_history
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: available
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.available_on

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: fee
    type: number
    sql: ${TABLE}.fee

  - dimension: net
    type: number
    sql: ${TABLE}.net

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - dimension: sourced_transfers__has_more
    type: yesno
    sql: ${TABLE}.sourced_transfers__has_more

  - dimension: sourced_transfers__object
    type: string
    sql: ${TABLE}.sourced_transfers__object

  - dimension: sourced_transfers__total_count
    type: number
    sql: ${TABLE}.sourced_transfers__total_count

  - dimension: sourced_transfers__url
    type: string
    sql: ${TABLE}.sourced_transfers__url

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

