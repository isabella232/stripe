view: stripe_events {
  sql_table_name: stripeblook.stripe_events ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: _rjm_batched_at {
    type: number
    sql: ${TABLE}._rjm_batched_at ;;
  }

  dimension: api_version {
    type: string
    sql: ${TABLE}.api_version ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created ;;
  }

  dimension: data__object__account__bank_name {
    type: string
    sql: ${TABLE}.data__object__account__bank_name ;;
  }

  dimension: data__object__account__country {
    type: string
    sql: ${TABLE}.data__object__account__country ;;
  }

  dimension: data__object__account__currency {
    type: string
    sql: ${TABLE}.data__object__account__currency ;;
  }

  dimension: data__object__account__disabled {
    type: yesno
    sql: ${TABLE}.data__object__account__disabled ;;
  }

  dimension: data__object__account__fingerprint {
    type: string
    sql: ${TABLE}.data__object__account__fingerprint ;;
  }

  dimension: data__object__account__id {
    type: string
    sql: ${TABLE}.data__object__account__id ;;
  }

  dimension: data__object__account__last4 {
    type: string
    sql: ${TABLE}.data__object__account__last4 ;;
  }

  dimension: data__object__account__object {
    type: string
    sql: ${TABLE}.data__object__account__object ;;
  }

  dimension: data__object__account__routing_number {
    type: string
    sql: ${TABLE}.data__object__account__routing_number ;;
  }

  dimension: data__object__account__status {
    type: string
    sql: ${TABLE}.data__object__account__status ;;
  }

  dimension: data__object__account__validated {
    type: yesno
    sql: ${TABLE}.data__object__account__validated ;;
  }

  dimension: data__object__account__verified {
    type: yesno
    sql: ${TABLE}.data__object__account__verified ;;
  }

  dimension: data__object__account_balance {
    type: number
    sql: ${TABLE}.data__object__account_balance ;;
  }

  dimension: data__object__active_card__brand {
    type: string
    sql: ${TABLE}.data__object__active_card__brand ;;
  }

  dimension: data__object__active_card__country {
    type: string
    sql: ${TABLE}.data__object__active_card__country ;;
  }

  dimension: data__object__active_card__customer {
    type: string
    sql: ${TABLE}.data__object__active_card__customer ;;
  }

  dimension: data__object__active_card__cvc_check {
    type: string
    sql: ${TABLE}.data__object__active_card__cvc_check ;;
  }

  dimension: data__object__active_card__exp_month {
    type: number
    sql: ${TABLE}.data__object__active_card__exp_month ;;
  }

  dimension: data__object__active_card__exp_year {
    type: number
    sql: ${TABLE}.data__object__active_card__exp_year ;;
  }

  dimension: data__object__active_card__fingerprint {
    type: string
    sql: ${TABLE}.data__object__active_card__fingerprint ;;
  }

  dimension: data__object__active_card__funding {
    type: string
    sql: ${TABLE}.data__object__active_card__funding ;;
  }

  dimension: data__object__active_card__id {
    type: string
    sql: ${TABLE}.data__object__active_card__id ;;
  }

  dimension: data__object__active_card__last4 {
    type: string
    sql: ${TABLE}.data__object__active_card__last4 ;;
  }

  dimension: data__object__active_card__name {
    type: string
    sql: ${TABLE}.data__object__active_card__name ;;
  }

  dimension: data__object__active_card__object {
    type: string
    sql: ${TABLE}.data__object__active_card__object ;;
  }

  dimension: data__object__active_card__type {
    type: string
    sql: ${TABLE}.data__object__active_card__type ;;
  }

  dimension: data__object__amount {
    type: number
    sql: ${TABLE}.data__object__amount ;;
  }

  dimension: data__object__amount_due {
    type: number
    sql: ${TABLE}.data__object__amount_due ;;
  }

  dimension: data__object__amount_refunded {
    type: number
    sql: ${TABLE}.data__object__amount_refunded ;;
  }

  dimension: data__object__amount_reversed {
    type: number
    sql: ${TABLE}.data__object__amount_reversed ;;
  }

  dimension: data__object__attempt_count {
    type: number
    sql: ${TABLE}.data__object__attempt_count ;;
  }

  dimension: data__object__attempted {
    type: yesno
    sql: ${TABLE}.data__object__attempted ;;
  }

  dimension: data__object__balance_transaction {
    type: string
    sql: ${TABLE}.data__object__balance_transaction ;;
  }

  dimension: data__object__bank_account__bank_name {
    type: string
    sql: ${TABLE}.data__object__bank_account__bank_name ;;
  }

  dimension: data__object__bank_account__country {
    type: string
    sql: ${TABLE}.data__object__bank_account__country ;;
  }

  dimension: data__object__bank_account__currency {
    type: string
    sql: ${TABLE}.data__object__bank_account__currency ;;
  }

  dimension: data__object__bank_account__disabled {
    type: yesno
    sql: ${TABLE}.data__object__bank_account__disabled ;;
  }

  dimension: data__object__bank_account__fingerprint {
    type: string
    sql: ${TABLE}.data__object__bank_account__fingerprint ;;
  }

  dimension: data__object__bank_account__id {
    type: string
    sql: ${TABLE}.data__object__bank_account__id ;;
  }

  dimension: data__object__bank_account__last4 {
    type: string
    sql: ${TABLE}.data__object__bank_account__last4 ;;
  }

  dimension: data__object__bank_account__object {
    type: string
    sql: ${TABLE}.data__object__bank_account__object ;;
  }

  dimension: data__object__bank_account__routing_number {
    type: string
    sql: ${TABLE}.data__object__bank_account__routing_number ;;
  }

  dimension: data__object__bank_account__status {
    type: string
    sql: ${TABLE}.data__object__bank_account__status ;;
  }

  dimension: data__object__bank_account__validated {
    type: yesno
    sql: ${TABLE}.data__object__bank_account__validated ;;
  }

  dimension: data__object__bank_account__verified {
    type: yesno
    sql: ${TABLE}.data__object__bank_account__verified ;;
  }

  dimension: data__object__brand {
    type: string
    sql: ${TABLE}.data__object__brand ;;
  }

  dimension: data__object__cancel_at_period_end {
    type: yesno
    sql: ${TABLE}.data__object__cancel_at_period_end ;;
  }

  dimension_group: data__object__canceled {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__canceled_at ;;
  }

  dimension: data__object__captured {
    type: yesno
    sql: ${TABLE}.data__object__captured ;;
  }

  dimension: data__object__card__brand {
    type: string
    sql: ${TABLE}.data__object__card__brand ;;
  }

  dimension: data__object__card__country {
    type: string
    sql: ${TABLE}.data__object__card__country ;;
  }

  dimension: data__object__card__customer {
    type: string
    sql: ${TABLE}.data__object__card__customer ;;
  }

  dimension: data__object__card__exp_month {
    type: number
    sql: ${TABLE}.data__object__card__exp_month ;;
  }

  dimension: data__object__card__exp_year {
    type: number
    sql: ${TABLE}.data__object__card__exp_year ;;
  }

  dimension: data__object__card__fingerprint {
    type: string
    sql: ${TABLE}.data__object__card__fingerprint ;;
  }

  dimension: data__object__card__funding {
    type: string
    sql: ${TABLE}.data__object__card__funding ;;
  }

  dimension: data__object__card__id {
    type: string
    sql: ${TABLE}.data__object__card__id ;;
  }

  dimension: data__object__card__last4 {
    type: string
    sql: ${TABLE}.data__object__card__last4 ;;
  }

  dimension: data__object__card__name {
    type: string
    sql: ${TABLE}.data__object__card__name ;;
  }

  dimension: data__object__card__object {
    type: string
    sql: ${TABLE}.data__object__card__object ;;
  }

  dimension: data__object__card__type {
    type: string
    sql: ${TABLE}.data__object__card__type ;;
  }

  dimension: data__object__cards__count {
    type: number
    sql: ${TABLE}.data__object__cards__count ;;
  }

  dimension: data__object__cards__has_more {
    type: yesno
    sql: ${TABLE}.data__object__cards__has_more ;;
  }

  dimension: data__object__cards__object {
    type: string
    sql: ${TABLE}.data__object__cards__object ;;
  }

  dimension: data__object__cards__total_count {
    type: number
    sql: ${TABLE}.data__object__cards__total_count ;;
  }

  dimension: data__object__cards__url {
    type: string
    sql: ${TABLE}.data__object__cards__url ;;
  }

  dimension: data__object__charge {
    type: string
    sql: ${TABLE}.data__object__charge ;;
  }

  dimension: data__object__closed {
    type: yesno
    sql: ${TABLE}.data__object__closed ;;
  }

  dimension: data__object__country {
    type: string
    sql: ${TABLE}.data__object__country ;;
  }

  dimension_group: data__object__created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__created ;;
  }

  dimension: data__object__currency {
    type: string
    sql: ${TABLE}.data__object__currency ;;
  }

  dimension_group: data__object__current_period_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__current_period_end ;;
  }

  dimension_group: data__object__current_period_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__current_period_start ;;
  }

  dimension: data__object__customer {
    type: string
    sql: ${TABLE}.data__object__customer ;;
  }

  dimension: data__object__cvc_check {
    type: string
    sql: ${TABLE}.data__object__cvc_check ;;
  }

  dimension_group: data__object_ {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__date ;;
  }

  dimension: data__object__default_card {
    type: string
    sql: ${TABLE}.data__object__default_card ;;
  }

  dimension: data__object__default_source {
    type: string
    sql: ${TABLE}.data__object__default_source ;;
  }

  dimension: data__object__delinquent {
    type: yesno
    sql: ${TABLE}.data__object__delinquent ;;
  }

  dimension: data__object__description {
    type: string
    sql: ${TABLE}.data__object__description ;;
  }

  dimension: data__object__destination {
    type: string
    sql: ${TABLE}.data__object__destination ;;
  }

  dimension: data__object__email {
    type: string
    sql: ${TABLE}.data__object__email ;;
  }

  dimension_group: data__object__ended {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__ended_at ;;
  }

  dimension: data__object__ending_balance {
    type: number
    sql: ${TABLE}.data__object__ending_balance ;;
  }

  dimension: data__object__exp_month {
    type: number
    sql: ${TABLE}.data__object__exp_month ;;
  }

  dimension: data__object__exp_year {
    type: number
    sql: ${TABLE}.data__object__exp_year ;;
  }

  dimension: data__object__fee {
    type: number
    sql: ${TABLE}.data__object__fee ;;
  }

  dimension: data__object__fingerprint {
    type: string
    sql: ${TABLE}.data__object__fingerprint ;;
  }

  dimension: data__object__forgiven {
    type: yesno
    sql: ${TABLE}.data__object__forgiven ;;
  }

  dimension: data__object__funding {
    type: string
    sql: ${TABLE}.data__object__funding ;;
  }

  dimension: data__object__id {
    type: string
    sql: ${TABLE}.data__object__id ;;
  }

  dimension: data__object__invoice {
    type: string
    sql: ${TABLE}.data__object__invoice ;;
  }

  dimension: data__object__last4 {
    type: string
    sql: ${TABLE}.data__object__last4 ;;
  }

  dimension: data__object__lines__count {
    type: number
    sql: ${TABLE}.data__object__lines__count ;;
  }

  dimension: data__object__lines__has_more {
    type: yesno
    sql: ${TABLE}.data__object__lines__has_more ;;
  }

  dimension: data__object__lines__object {
    type: string
    sql: ${TABLE}.data__object__lines__object ;;
  }

  dimension: data__object__lines__total_count {
    type: number
    sql: ${TABLE}.data__object__lines__total_count ;;
  }

  dimension: data__object__lines__url {
    type: string
    sql: ${TABLE}.data__object__lines__url ;;
  }

  dimension: data__object__livemode {
    type: yesno
    sql: ${TABLE}.data__object__livemode ;;
  }

  dimension: data__object__name {
    type: string
    sql: ${TABLE}.data__object__name ;;
  }

  dimension_group: data__object__next_payment_attempt {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__next_payment_attempt ;;
  }

  dimension: data__object__object {
    type: string
    sql: ${TABLE}.data__object__object ;;
  }

  dimension: data__object__paid {
    type: yesno
    sql: ${TABLE}.data__object__paid ;;
  }

  dimension: data__object__payment {
    type: string
    sql: ${TABLE}.data__object__payment ;;
  }

  dimension_group: data__object__period_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__period_end ;;
  }

  dimension_group: data__object__period_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__period_start ;;
  }

  dimension: data__object__plan__amount {
    type: number
    sql: ${TABLE}.data__object__plan__amount ;;
  }

  dimension_group: data__object__plan__created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__plan__created ;;
  }

  dimension: data__object__plan__currency {
    type: string
    sql: ${TABLE}.data__object__plan__currency ;;
  }

  dimension: data__object__plan__id {
    type: string
    sql: ${TABLE}.data__object__plan__id ;;
  }

  dimension: data__object__plan__interval {
    type: string
    sql: ${TABLE}.data__object__plan__interval ;;
  }

  dimension: data__object__plan__interval_count {
    type: number
    sql: ${TABLE}.data__object__plan__interval_count ;;
  }

  dimension: data__object__plan__livemode {
    type: yesno
    sql: ${TABLE}.data__object__plan__livemode ;;
  }

  dimension: data__object__plan__name {
    type: string
    sql: ${TABLE}.data__object__plan__name ;;
  }

  dimension: data__object__plan__object {
    type: string
    sql: ${TABLE}.data__object__plan__object ;;
  }

  dimension: data__object__plan__trial_period_days {
    type: number
    sql: ${TABLE}.data__object__plan__trial_period_days ;;
  }

  dimension: data__object__quantity {
    type: number
    sql: ${TABLE}.data__object__quantity ;;
  }

  dimension: data__object__receipt_email {
    type: string
    sql: ${TABLE}.data__object__receipt_email ;;
  }

  dimension: data__object__receipt_number {
    type: string
    sql: ${TABLE}.data__object__receipt_number ;;
  }

  dimension: data__object__refunded {
    type: yesno
    sql: ${TABLE}.data__object__refunded ;;
  }

  dimension: data__object__refunds__has_more {
    type: yesno
    sql: ${TABLE}.data__object__refunds__has_more ;;
  }

  dimension: data__object__refunds__object {
    type: string
    sql: ${TABLE}.data__object__refunds__object ;;
  }

  dimension: data__object__refunds__total_count {
    type: number
    sql: ${TABLE}.data__object__refunds__total_count ;;
  }

  dimension: data__object__refunds__url {
    type: string
    sql: ${TABLE}.data__object__refunds__url ;;
  }

  dimension: data__object__reversals__count {
    type: number
    sql: ${TABLE}.data__object__reversals__count ;;
  }

  dimension: data__object__reversals__has_more {
    type: yesno
    sql: ${TABLE}.data__object__reversals__has_more ;;
  }

  dimension: data__object__reversals__object {
    type: string
    sql: ${TABLE}.data__object__reversals__object ;;
  }

  dimension: data__object__reversals__total_count {
    type: number
    sql: ${TABLE}.data__object__reversals__total_count ;;
  }

  dimension: data__object__reversals__url {
    type: string
    sql: ${TABLE}.data__object__reversals__url ;;
  }

  dimension: data__object__reversed {
    type: yesno
    sql: ${TABLE}.data__object__reversed ;;
  }

  dimension: data__object__source__brand {
    type: string
    sql: ${TABLE}.data__object__source__brand ;;
  }

  dimension: data__object__source__country {
    type: string
    sql: ${TABLE}.data__object__source__country ;;
  }

  dimension: data__object__source__customer {
    type: string
    sql: ${TABLE}.data__object__source__customer ;;
  }

  dimension: data__object__source__exp_month {
    type: number
    sql: ${TABLE}.data__object__source__exp_month ;;
  }

  dimension: data__object__source__exp_year {
    type: number
    sql: ${TABLE}.data__object__source__exp_year ;;
  }

  dimension: data__object__source__fingerprint {
    type: string
    sql: ${TABLE}.data__object__source__fingerprint ;;
  }

  dimension: data__object__source__funding {
    type: string
    sql: ${TABLE}.data__object__source__funding ;;
  }

  dimension: data__object__source__id {
    type: string
    sql: ${TABLE}.data__object__source__id ;;
  }

  dimension: data__object__source__last4 {
    type: string
    sql: ${TABLE}.data__object__source__last4 ;;
  }

  dimension: data__object__source__name {
    type: string
    sql: ${TABLE}.data__object__source__name ;;
  }

  dimension: data__object__source__object {
    type: string
    sql: ${TABLE}.data__object__source__object ;;
  }

  dimension: data__object__source__type {
    type: string
    sql: ${TABLE}.data__object__source__type ;;
  }

  dimension: data__object__sources__count {
    type: number
    sql: ${TABLE}.data__object__sources__count ;;
  }

  dimension: data__object__sources__has_more {
    type: yesno
    sql: ${TABLE}.data__object__sources__has_more ;;
  }

  dimension: data__object__sources__object {
    type: string
    sql: ${TABLE}.data__object__sources__object ;;
  }

  dimension: data__object__sources__total_count {
    type: number
    sql: ${TABLE}.data__object__sources__total_count ;;
  }

  dimension: data__object__sources__url {
    type: string
    sql: ${TABLE}.data__object__sources__url ;;
  }

  dimension_group: data__object__start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__start ;;
  }

  dimension: data__object__starting_balance {
    type: number
    sql: ${TABLE}.data__object__starting_balance ;;
  }

  dimension: data__object__status {
    type: string
    sql: ${TABLE}.data__object__status ;;
  }

  dimension: data__object__subscription {
    type: string
    sql: ${TABLE}.data__object__subscription ;;
  }

  dimension: data__object__subscription__cancel_at_period_end {
    type: yesno
    sql: ${TABLE}.data__object__subscription__cancel_at_period_end ;;
  }

  dimension: data__object__subscription__current_period_end {
    type: number
    sql: ${TABLE}.data__object__subscription__current_period_end ;;
  }

  dimension: data__object__subscription__current_period_start {
    type: number
    sql: ${TABLE}.data__object__subscription__current_period_start ;;
  }

  dimension: data__object__subscription__customer {
    type: string
    sql: ${TABLE}.data__object__subscription__customer ;;
  }

  dimension: data__object__subscription__id {
    type: string
    sql: ${TABLE}.data__object__subscription__id ;;
  }

  dimension: data__object__subscription__object {
    type: string
    sql: ${TABLE}.data__object__subscription__object ;;
  }

  dimension: data__object__subscription__plan__amount {
    type: number
    sql: ${TABLE}.data__object__subscription__plan__amount ;;
  }

  dimension: data__object__subscription__plan__created {
    type: number
    sql: ${TABLE}.data__object__subscription__plan__created ;;
  }

  dimension: data__object__subscription__plan__currency {
    type: string
    sql: ${TABLE}.data__object__subscription__plan__currency ;;
  }

  dimension: data__object__subscription__plan__id {
    type: string
    sql: ${TABLE}.data__object__subscription__plan__id ;;
  }

  dimension: data__object__subscription__plan__interval {
    type: string
    sql: ${TABLE}.data__object__subscription__plan__interval ;;
  }

  dimension: data__object__subscription__plan__interval_count {
    type: number
    sql: ${TABLE}.data__object__subscription__plan__interval_count ;;
  }

  dimension: data__object__subscription__plan__livemode {
    type: yesno
    sql: ${TABLE}.data__object__subscription__plan__livemode ;;
  }

  dimension: data__object__subscription__plan__name {
    type: string
    sql: ${TABLE}.data__object__subscription__plan__name ;;
  }

  dimension: data__object__subscription__plan__object {
    type: string
    sql: ${TABLE}.data__object__subscription__plan__object ;;
  }

  dimension: data__object__subscription__plan__trial_period_days {
    type: number
    sql: ${TABLE}.data__object__subscription__plan__trial_period_days ;;
  }

  dimension: data__object__subscription__quantity {
    type: number
    sql: ${TABLE}.data__object__subscription__quantity ;;
  }

  dimension: data__object__subscription__start {
    type: number
    sql: ${TABLE}.data__object__subscription__start ;;
  }

  dimension: data__object__subscription__status {
    type: string
    sql: ${TABLE}.data__object__subscription__status ;;
  }

  dimension: data__object__subscription__trial_end {
    type: number
    sql: ${TABLE}.data__object__subscription__trial_end ;;
  }

  dimension: data__object__subscription__trial_start {
    type: number
    sql: ${TABLE}.data__object__subscription__trial_start ;;
  }

  dimension: data__object__subscriptions__count {
    type: number
    sql: ${TABLE}.data__object__subscriptions__count ;;
  }

  dimension: data__object__subscriptions__has_more {
    type: yesno
    sql: ${TABLE}.data__object__subscriptions__has_more ;;
  }

  dimension: data__object__subscriptions__object {
    type: string
    sql: ${TABLE}.data__object__subscriptions__object ;;
  }

  dimension: data__object__subscriptions__total_count {
    type: number
    sql: ${TABLE}.data__object__subscriptions__total_count ;;
  }

  dimension: data__object__subscriptions__url {
    type: string
    sql: ${TABLE}.data__object__subscriptions__url ;;
  }

  dimension: data__object__subtotal {
    type: number
    sql: ${TABLE}.data__object__subtotal ;;
  }

  dimension: data__object__summary__adjustment_count {
    type: number
    sql: ${TABLE}.data__object__summary__adjustment_count ;;
  }

  dimension: data__object__summary__adjustment_fees {
    type: number
    sql: ${TABLE}.data__object__summary__adjustment_fees ;;
  }

  dimension: data__object__summary__adjustment_gross {
    type: number
    sql: ${TABLE}.data__object__summary__adjustment_gross ;;
  }

  dimension: data__object__summary__charge_count {
    type: number
    sql: ${TABLE}.data__object__summary__charge_count ;;
  }

  dimension: data__object__summary__charge_fees {
    type: number
    sql: ${TABLE}.data__object__summary__charge_fees ;;
  }

  dimension: data__object__summary__charge_gross {
    type: number
    sql: ${TABLE}.data__object__summary__charge_gross ;;
  }

  dimension: data__object__summary__collected_fee_count {
    type: number
    sql: ${TABLE}.data__object__summary__collected_fee_count ;;
  }

  dimension: data__object__summary__collected_fee_gross {
    type: number
    sql: ${TABLE}.data__object__summary__collected_fee_gross ;;
  }

  dimension: data__object__summary__collected_fee_refund_count {
    type: number
    sql: ${TABLE}.data__object__summary__collected_fee_refund_count ;;
  }

  dimension: data__object__summary__collected_fee_refund_gross {
    type: number
    sql: ${TABLE}.data__object__summary__collected_fee_refund_gross ;;
  }

  dimension: data__object__summary__currency {
    type: string
    sql: ${TABLE}.data__object__summary__currency ;;
  }

  dimension: data__object__summary__net {
    type: number
    sql: ${TABLE}.data__object__summary__net ;;
  }

  dimension: data__object__summary__refund_count {
    type: number
    sql: ${TABLE}.data__object__summary__refund_count ;;
  }

  dimension: data__object__summary__refund_fees {
    type: number
    sql: ${TABLE}.data__object__summary__refund_fees ;;
  }

  dimension: data__object__summary__refund_gross {
    type: number
    sql: ${TABLE}.data__object__summary__refund_gross ;;
  }

  dimension: data__object__summary__reserve_adjustment_count {
    type: number
    sql: ${TABLE}.data__object__summary__reserve_adjustment_count ;;
  }

  dimension: data__object__summary__reserve_adjustment_fees {
    type: number
    sql: ${TABLE}.data__object__summary__reserve_adjustment_fees ;;
  }

  dimension: data__object__summary__reserve_adjustment_gross {
    type: number
    sql: ${TABLE}.data__object__summary__reserve_adjustment_gross ;;
  }

  dimension: data__object__summary__validation_count {
    type: number
    sql: ${TABLE}.data__object__summary__validation_count ;;
  }

  dimension: data__object__summary__validation_fees {
    type: number
    sql: ${TABLE}.data__object__summary__validation_fees ;;
  }

  dimension: data__object__total {
    type: number
    sql: ${TABLE}.data__object__total ;;
  }

  dimension: data__object__transactions__count {
    type: number
    sql: ${TABLE}.data__object__transactions__count ;;
  }

  dimension: data__object__transactions__has_more {
    type: yesno
    sql: ${TABLE}.data__object__transactions__has_more ;;
  }

  dimension: data__object__transactions__object {
    type: string
    sql: ${TABLE}.data__object__transactions__object ;;
  }

  dimension: data__object__transactions__url {
    type: string
    sql: ${TABLE}.data__object__transactions__url ;;
  }

  dimension_group: data__object__trial_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__trial_end ;;
  }

  dimension_group: data__object__trial_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__trial_start ;;
  }

  dimension: data__object__type {
    type: string
    sql: ${TABLE}.data__object__type ;;
  }

  dimension_group: data__object__webhooks_delivered {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__object__webhooks_delivered_at ;;
  }

  dimension: data__previous_attributes__amount_refunded {
    type: number
    sql: ${TABLE}.data__previous_attributes__amount_refunded ;;
  }

  dimension: data__previous_attributes__attempted {
    type: yesno
    sql: ${TABLE}.data__previous_attributes__attempted ;;
  }

  dimension: data__previous_attributes__closed {
    type: yesno
    sql: ${TABLE}.data__previous_attributes__closed ;;
  }

  dimension_group: data__previous_attributes__current_period_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__previous_attributes__current_period_end ;;
  }

  dimension_group: data__previous_attributes__current_period_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__previous_attributes__current_period_start ;;
  }

  dimension: data__previous_attributes__exp_month {
    type: number
    sql: ${TABLE}.data__previous_attributes__exp_month ;;
  }

  dimension: data__previous_attributes__exp_year {
    type: number
    sql: ${TABLE}.data__previous_attributes__exp_year ;;
  }

  dimension: data__previous_attributes__fee {
    type: number
    sql: ${TABLE}.data__previous_attributes__fee ;;
  }

  dimension: data__previous_attributes__fingerprint {
    type: string
    sql: ${TABLE}.data__previous_attributes__fingerprint ;;
  }

  dimension: data__previous_attributes__last4 {
    type: string
    sql: ${TABLE}.data__previous_attributes__last4 ;;
  }

  dimension_group: data__previous_attributes__next_payment_attempt {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data__previous_attributes__next_payment_attempt ;;
  }

  dimension: data__previous_attributes__paid {
    type: yesno
    sql: ${TABLE}.data__previous_attributes__paid ;;
  }

  dimension: data__previous_attributes__refunded {
    type: yesno
    sql: ${TABLE}.data__previous_attributes__refunded ;;
  }

  dimension: data__previous_attributes__status {
    type: string
    sql: ${TABLE}.data__previous_attributes__status ;;
  }

  dimension: livemode {
    type: yesno
    sql: ${TABLE}.livemode ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: pending_webhooks {
    type: number
    sql: ${TABLE}.pending_webhooks ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      data__object__source__name,
      data__object__subscription__plan__name,
      data__object__card__name,
      data__object__name,
      data__object__bank_account__bank_name,
      data__object__active_card__name,
      data__object__plan__name,
      data__object__account__bank_name
    ]
  }
}
