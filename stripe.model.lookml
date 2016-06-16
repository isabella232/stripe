- connection: vandelay_looker_connection

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: stripe_balance_history

- explore: stripe_balance_history__fee_details

- explore: stripe_charges

- explore: stripe_charges__fee_details

- explore: stripe_charges__refunds

- explore: stripe_charges__refunds__data

- explore: stripe_customers

- explore: stripe_customers__cards__data

- explore: stripe_customers__sources__data

- explore: stripe_customers__subscriptions__data

- explore: stripe_events

- explore: stripe_events__data__object__available

- explore: stripe_events__data__object__cards__data

- explore: stripe_events__data__object__fee_details

- explore: stripe_events__data__object__lines__data

- explore: stripe_events__data__object__other_transfers

- explore: stripe_events__data__object__pending

- explore: stripe_events__data__object__refunds

- explore: stripe_events__data__object__sources__data

- explore: stripe_events__data__object__subscriptions__data

- explore: stripe_events__data__object__summary__charge_fee_details

- explore: stripe_events__data__object__summary__refund_fee_details

- explore: stripe_events__data__object__transactions__data

- explore: stripe_events__data__object__transactions__data__fee_details

- explore: stripe_invoices

- explore: stripe_invoices__lines__data

- explore: stripe_subscriptions

- explore: stripe_transfers

- explore: stripe_transfers__other_transfers

- explore: stripe_transfers__summary__charge_fee_details

- explore: stripe_transfers__summary__refund_fee_details

- explore: stripe_transfers__transactions__data

- explore: stripe_transfers__transactions__data__fee_details

