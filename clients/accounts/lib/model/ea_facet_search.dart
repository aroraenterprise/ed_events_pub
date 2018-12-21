part of edropin_accountsapi.api;

class EaFacetSearch {
  
  List<EaFacetSearchFacetHits> facetHits = [];
  
  bool exhaustiveFacetsCount = null;
  
  int processingTimeMS = null;
  EaFacetSearch();

  @override
  String toString() {
    return 'EaFacetSearch[facetHits=$facetHits, exhaustiveFacetsCount=$exhaustiveFacetsCount, processingTimeMS=$processingTimeMS, ]';
  }

  EaFacetSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    facetHits = EaFacetSearchFacetHits.listFromJson(json['facetHits']);
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

  static List<EaFacetSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<EaFacetSearch>() : json.map((value) => new EaFacetSearch.fromJson(value)).toList();
  }

  static Map<String, EaFacetSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EaFacetSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new EaFacetSearch.fromJson(value));
    }
    return map;
  }
}

