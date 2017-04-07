- dashboard: stripe
  title: Stripe
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: add_a_unique_name_1466620315406
    title: "# of charges and sum of amount charged"
    type: looker_column
    model: stripe
    explore: stripe_charges
    dimensions: [stripe_charges.created_date]
    measures: [stripe_charges.count, stripe_charges.sum_charge_amount]
    sorts: [stripe_charges.created_date desc]
    limit: 500
    stacking: ''
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
    '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    series_types:
    stripe_charges.count: line
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
    series_types:
      stripe_charges.count: line
      stripe_charges.sum_charge_amount: column
