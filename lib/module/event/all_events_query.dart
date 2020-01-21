const ALL_EVENTS_QUERY = """
  query Events(\$fromDate: DateTime) {
    allEvents(filter: { startTime_gte: \$fromDate }) {
      startTime
      endTime
      id
      streamLink
      moreInfo
      eventType
      title
      description
      presentations {
        id
        topic
        excerpt
        speaker {
          name
        }
      }
    }
  }
""";
