import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

class Graphql extends StatelessWidget {
  const Graphql({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(uri: "http://10.240.72.17:3000/graphql");
    final ValueNotifier<GraphQLClient> client =
        ValueNotifier<GraphQLClient>(GraphQLClient(
            link: httpLink,
            cache: OptimisticCache(
              dataIdFromObject: typenameDataIdFromObject,
            )));

    return GraphQLProvider(
      child: ViewSection(),
      client: client,
    );
  }
}

class ViewSection extends StatefulWidget {
  @override
  _ViewSectionState createState() => _ViewSectionState();
}

class _ViewSectionState extends State<ViewSection> {
  String readData = """
              query GetProduts{
                products{
                  name
                }
              }
            """;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Query(
          options: QueryOptions(
            documentNode: gql(readData),
          ),
          builder: (
            QueryResult result, {
            FetchMore fetchMore,
            VoidCallback refetch,
          }) {
            if (result.data == null) {
              return Text('No data found');
            }
            List products = result.data['products'];
            return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  print(product[index]);
                  return Text(product['name']);
                });
          }),
    );
  }
}
