- view: stripe_transfers
  sql_table_name: stripeblook.stripe_transfers # https://stripe.com/docs/api/curl#transfer_object
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
    sql: ${TABLE}.amount / 100 # Amount (in cents) to be transferred to your bank account

  - dimension: amount_reversed
    type: number
    sql: ${TABLE}.amount_reversed / 100 # Amount in cents reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).

  - dimension: balance_transaction
    type: string
    sql: ${TABLE}.balance_transaction

  - dimension: bank_account__bank_name
    type: string
    sql: ${TABLE}.bank_account__bank_name

  - dimension: bank_account__country
    type: string
    sql: ${TABLE}.bank_account__country

  - dimension: bank_account__currency
    type: string
    sql: ${TABLE}.bank_account__currency

  - dimension: bank_account__fingerprint
    type: string
    sql: ${TABLE}.bank_account__fingerprint

  - dimension: bank_account__id
    type: string
    sql: ${TABLE}.bank_account__id

  - dimension: bank_account__last4
    type: string
    sql: ${TABLE}.bank_account__last4

  - dimension: bank_account__object
    type: string
    sql: ${TABLE}.bank_account__object

  - dimension: bank_account__routing_number
    type: string
    sql: ${TABLE}.bank_account__routing_number

  - dimension: bank_account__status
    type: string
    sql: ${TABLE}.bank_account__status

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.date

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: destination
    type: string
    sql: ${TABLE}.destination

  - dimension: livemode
    type: yesno
    sql: ${TABLE}.livemode

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension: reversals__has_more
    type: yesno
    sql: ${TABLE}.reversals__has_more

  - dimension: reversals__object
    type: string
    sql: ${TABLE}.reversals__object

  - dimension: reversals__total_count
    type: number
    sql: ${TABLE}.reversals__total_count

  - dimension: reversals__url
    type: string
    sql: ${TABLE}.reversals__url

  - dimension: reversed
    type: yesno
    sql: ${TABLE}.reversed

  - dimension: source_type
    type: string
    sql: ${TABLE}.source_type

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id, bank_account__bank_name]

