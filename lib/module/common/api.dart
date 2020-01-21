import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
  uri: 'https://api.graph.cool/simple/v1/cjf1gdgw57hzh0112a54shy6j',
);

final ValueNotifier<GraphQLClient> client = ValueNotifier(GraphQLClient(
  cache: InMemoryCache(),
  link: httpLink,
));
