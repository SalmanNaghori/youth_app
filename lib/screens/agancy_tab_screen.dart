import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth_app/providers/pro_agency.dart';

import '../widgets/agency_item.dart';

class AgencyTab extends StatefulWidget {
  @override
  State<AgencyTab> createState() => _AgencyTabState();
}

class _AgencyTabState extends State<AgencyTab> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    //simulate loading
    await Future.delayed(
      Duration(seconds: 3),
    );

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final agencyData = Provider.of<Agencies>(context);
    final agencies = agencyData.items;
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 10, bottom: 10, left: 10),
      child: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                value: agencies[index],
                child: AgencyItem(
                    id: agencies[index].id,
                    image: agencies[index].image,
                    title: agencies[index].title,
                    image2: agencies[index].image2,
                    url: agencies[index].url),
              ),
              itemCount: agencies.length,
            ),
    );
  }
}
