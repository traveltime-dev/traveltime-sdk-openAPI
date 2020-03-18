namespace OpenAPI.Tests

open System
open System.Net
open System.Net.Http
open System.IO
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Hosting
open Microsoft.AspNetCore.TestHost
open Microsoft.Extensions.DependencyInjection
open FSharp.Control.Tasks.V2.ContextInsensitive
open Xunit
open System.Text
open TestHelper
open OpenAPI.DefaultApiHandler
open OpenAPI.DefaultApiHandlerParams

module DefaultApiHandlerTestsHelper =

  ()

  ()

  ()


  let mutable RoutesExamples = Map.empty
  let mutable RoutesBody = ""

  RoutesBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;locations&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  } ]
}"
  RoutesExamples <- RoutesExamples.Add("application/json", RoutesBody)

  let getRoutesExample mediaType =
    RoutesExamples.[mediaType]
      |> getConverter mediaType

  let mutable SupportedLocationsExamples = Map.empty
  let mutable SupportedLocationsBody = ""

  SupportedLocationsBody <- WebUtility.HtmlDecode "{
  &quot;locations&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  } ]
}"
  SupportedLocationsExamples <- SupportedLocationsExamples.Add("application/json", SupportedLocationsBody)

  let getSupportedLocationsExample mediaType =
    SupportedLocationsExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeFilterExamples = Map.empty
  let mutable TimeFilterBody = ""

  TimeFilterBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 5245,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 5245,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 5245,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 5245,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
    &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 5245,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 3361,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 3361,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 3361,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 3361,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
    &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 3361,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;locations&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  } ]
}"
  TimeFilterExamples <- TimeFilterExamples.Add("application/json", TimeFilterBody)

  let getTimeFilterExample mediaType =
    TimeFilterExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeFilterFastExamples = Map.empty
  let mutable TimeFilterFastBody = ""

  TimeFilterFastBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : {
    &quot;many_to_one&quot; : [ {
      &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
      &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 1208,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
      &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 1208,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
      &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 1208,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
      &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 1208,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;departure_location_ids&quot; : [ &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot;, &quot;departure_location_ids&quot; ],
      &quot;arrival_location_id&quot; : &quot;arrival_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 1208,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    } ],
    &quot;one_to_many&quot; : [ {
      &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
      &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 8703,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
      &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 8703,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
      &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 8703,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
      &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 8703,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    }, {
      &quot;arrival_location_ids&quot; : [ &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot;, &quot;arrival_location_ids&quot; ],
      &quot;departure_location_id&quot; : &quot;departure_location_id&quot;,
      &quot;id&quot; : &quot;id&quot;,
      &quot;travel_time&quot; : 8703,
      &quot;properties&quot; : [ null, null ],
      &quot;transportation&quot; : {
        &quot;type&quot; : &quot;public_transport&quot;
      }
    } ]
  },
  &quot;locations&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    }
  } ]
}"
  TimeFilterFastExamples <- TimeFilterFastExamples.Add("application/json", TimeFilterFastBody)

  let getTimeFilterFastExample mediaType =
    TimeFilterFastExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeFilterPostcodeDistrictsExamples = Map.empty
  let mutable TimeFilterPostcodeDistrictsBody = ""

  TimeFilterPostcodeDistrictsBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ]
}"
  TimeFilterPostcodeDistrictsExamples <- TimeFilterPostcodeDistrictsExamples.Add("application/json", TimeFilterPostcodeDistrictsBody)

  let getTimeFilterPostcodeDistrictsExample mediaType =
    TimeFilterPostcodeDistrictsExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeFilterPostcodeSectorsExamples = Map.empty
  let mutable TimeFilterPostcodeSectorsBody = ""

  TimeFilterPostcodeSectorsBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;reachable_postcodes_threshold&quot; : 5.962133916683182,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;reachable_postcodes_threshold&quot; : 6.027456183070403,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ]
}"
  TimeFilterPostcodeSectorsExamples <- TimeFilterPostcodeSectorsExamples.Add("application/json", TimeFilterPostcodeSectorsBody)

  let getTimeFilterPostcodeSectorsExample mediaType =
    TimeFilterPostcodeSectorsExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeFilterPostcodesExamples = Map.empty
  let mutable TimeFilterPostcodesBody = ""

  TimeFilterPostcodesBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 8703,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 8703,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 8703,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 8703,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 8703,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 40182,
      &quot;max_results&quot; : 3,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ]
}"
  TimeFilterPostcodesExamples <- TimeFilterPostcodesExamples.Add("application/json", TimeFilterPostcodesBody)

  let getTimeFilterPostcodesExample mediaType =
    TimeFilterPostcodesExamples.[mediaType]
      |> getConverter mediaType

  let mutable TimeMapExamples = Map.empty
  let mutable TimeMapBody = ""

  TimeMapBody <- WebUtility.HtmlDecode "{
  &quot;arrival_searches&quot; : [ {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;arrival_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 2161,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;unions&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  } ],
  &quot;departure_searches&quot; : [ {
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  }, {
    &quot;range&quot; : {
      &quot;width&quot; : 26039,
      &quot;enabled&quot; : true
    },
    &quot;id&quot; : &quot;id&quot;,
    &quot;travel_time&quot; : 1208,
    &quot;departure_time&quot; : &quot;2000-01-23T04:56:07.000+00:00&quot;,
    &quot;coords&quot; : {
      &quot;lng&quot; : 3.616076749251911,
      &quot;lat&quot; : 9.301444243932576
    },
    &quot;properties&quot; : [ null, null ],
    &quot;transportation&quot; : {
      &quot;pt_change_delay&quot; : 0,
      &quot;boarding_time&quot; : 5,
      &quot;driving_time_to_station&quot; : 1,
      &quot;type&quot; : &quot;cycling&quot;,
      &quot;walking_time&quot; : 6,
      &quot;parking_time&quot; : 5
    }
  } ],
  &quot;intersections&quot; : [ {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  }, {
    &quot;id&quot; : &quot;id&quot;,
    &quot;search_ids&quot; : [ &quot;search_ids&quot;, &quot;search_ids&quot; ]
  } ]
}"
  TimeMapExamples <- TimeMapExamples.Add("application/json", TimeMapBody)

  let getTimeMapExample mediaType =
    TimeMapExamples.[mediaType]
      |> getConverter mediaType
