view: stripe_events__data__object__sources__data {
  sql_table_name: stripe_demo.stripe_events__data__object__sources__data ;;

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

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }

  dimension: cvc_check {
    type: string
    sql: ${TABLE}.cvc_check ;;
  }

  dimension: exp_month {
    type: number
    sql: ${TABLE}.exp_month ;;
  }

  dimension: exp_year {
    type: number
    sql: ${TABLE}.exp_year ;;
  }

  dimension: fingerprint {
    type: string
    sql: ${TABLE}.fingerprint ;;
  }

  dimension: funding {
    type: string
    sql: ${TABLE}.funding ;;
  }

  dimension: last4 {
    type: string
    sql: ${TABLE}.last4 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}