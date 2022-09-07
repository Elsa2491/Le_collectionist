module ScheduleHelper
  def weekdays
    [
      { label: t(
        "weekedays.monday"
      ), value: 1 },

      { label:
        t(
          "weekedays.tuesday"
        ), value: 2 },

      { label: t(
        "weekedays.wednesday"
      ), value: 3 },

      { label: t(
        "weekedays.thursday"
      ), value: 4 },

      { label: t(
        "weekedays.friday"
      ), value: 5 },

      { label: t(
        "weekedays.saturday"
      ), value: 6 },

      { label: t(
        "weekedays.sunday"
      ), value: 7 }
    ]
  end
end
