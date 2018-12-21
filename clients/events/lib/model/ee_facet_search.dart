part of edropin_eventsapi.api;

class EeFacetSearch {
  
  List<EeFacetSearchFacetHits> facetHits = [];
  
  bool exhaustiveFacetsCount = null;
  
  int processingTimeMS = null;
  EeFacetSearch();

  @override
  String toString() {
    return 'EeFacetSearch[facetHits=$facetHits, exhaustiveFacetsCount=$exhaustiveFacetsCount, processingTimeMS=$processingTimeMS, ]';
  }

  EeFacetSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    facetHits = EeFacetSearchFacetHits.listFromJson(json['facetHits']);
    exhaustiveFacetsCount = json['exhaustiveFacetsCount'];
    processingTimeMS = json['processingTimeMS'];
  }

  Map<String, dynamic> toJson() {
    return {
      'facetHits': facetHits,
      'exhaustiveFacetsCount': exhaustiveFacetsCount,
      'processingTimeMS': processingTimeMS
    };
  }

  static List<EeFacetSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<EeFacetSearch>() : json.map((value) => new EeFacetSearch.fromJson(value)).toList();
  }

  static Map<String, EeFacetSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EeFacetSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EeFacetSearch.fromJson(value));
    }
    return map;
  }
}

