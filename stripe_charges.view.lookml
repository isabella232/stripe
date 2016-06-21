- view: stripe_charges
  sql_table_name: stripeblook.stripe_charges # https://stripe.com/docs/api/curl#charge_object
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: amount 
    # A positive integer in the smallest currency unit 
    # (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a 0-decimal currency) representing how much to charge. 
    # The minimum amount is $0.50 US or equivalent in charge currency.
    # NEEDED: This will need to be more flexible to account for various currencies other than USD.
    type: number
    sql: ${TABLE}.amount / 100 # The integer is in cents.

  - dimension: amount_refunded
    type: number
    sql: ${TABLE}.amount_refunded

  - dimension: balance_transaction
    type: string
    sql: ${TABLE}.balance_transaction

  - dimension: captured
    type: yesno
    sql: ${TABLE}.captured

  - dimension: card__brand
    type: string
    sql: ${TABLE}.card__brand

  - dimension: card__country
    type: string
    sql: ${TABLE}.card__country

  - dimension: card__customer
    type: string
    sql: ${TABLE}.card__customer

  - dimension: card__exp_month
    type: number
    sql: ${TABLE}.card__exp_month

  - dimension: card__exp_year
    type: number
    sql: ${TABLE}.card__exp_year

  - dimension: card__fingerprint
    type: string
    sql: ${TABLE}.card__fingerprint

  - dimension: card__funding
    type: string
    sql: ${TABLE}.card__funding

  - dimension: card__id
    type: string
    sql: ${TABLE}.card__id

  - dimension: card__last4
    type: string
    sql: ${TABLE}.card__last4

  - dimension: card__name
    type: string
    sql: ${TABLE}.card__name

  - dimension: card__object
    type: string
    sql: ${TABLE}.card__object

  - dimension: card__type
    type: string
    sql: ${TABLE}.card__type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension: customer
    type: string
    sql: ${TABLE}.customer

  - dimension: fee
    type: number
    sql: ${TABLE}.fee

  - dimension: invoice
    type: string
    sql: ${TABLE}.invoice

  - dimension: livemode
    type: yesno
    sql: ${TABLE}.livemode

  - dimension: object
    type: string
    sql: ${TABLE}.object

  - dimension: paid
    type: yesno
    sql: ${TABLE}.paid

  - dimension: receipt_email
    type: string
    sql: ${TABLE}.receipt_email

  - dimension: receipt_number
    type: string
    sql: ${TABLE}.receipt_number

  - dimension: refunded
    type: yesno
    sql: ${TABLE}.refunded

  - dimension: refunds__has_more
    type: yesno
    sql: ${TABLE}.refunds__has_more

  - dimension: refunds__object
    type: string
    sql: ${TABLE}.refunds__object

  - dimension: refunds__total_count
    type: number
    sql: ${TABLE}.refunds__total_count

  - dimension: refunds__url
    type: string
    sql: ${TABLE}.refunds__url

  - dimension: source__brand
    type: string
    sql: ${TABLE}.source__brand

  - dimension: source__country
    type: string
    sql: ${TABLE}.source__country

  - dimension: source__customer
    type: string
    sql: ${TABLE}.source__customer

  - dimension: source__exp_month
    type: number
    sql: ${TABLE}.source__exp_month

  - dimension: source__exp_year
    type: number
    sql: ${TABLE}.source__exp_year

  - dimension: source__fingerprint
    type: string
    sql: ${TABLE}.source__fingerprint

  - dimension: source__funding
    type: string
    sql: ${TABLE}.source__funding

  - dimension: source__id
    type: string
    sql: ${TABLE}.source__id

  - dimension: source__last4
    type: string
    sql: ${TABLE}.source__last4

  - dimension: source__name
    type: string
    sql: ${TABLE}.source__name

  - dimension: source__object
    type: string
    sql: ${TABLE}.source__object

  - dimension: source__type
    type: string
    sql: ${TABLE}.source__type

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - measure: sum_charge_amount
    type: sum
    sql: ${amount}
    
  - measure: average_charge_amount
    type: average
    sql: ${amount}  

  - measure: count
    type: count
    drill_fields: [id, source__name, card__name]

