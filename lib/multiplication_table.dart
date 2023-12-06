import 'package:flutter/material.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

import 'constants.dart';

const double cellWidth = 50;

class MultiplicationTable extends StatelessWidget {
  const MultiplicationTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableView.builder(
      pinnedColumnCount: 1,
      pinnedRowCount: 1,
      columnCount: maxNumber,
      rowCount: maxNumber,
      columnBuilder: (int column) {
        return TableSpan(
          extent: FixedTableSpanExtent(cellWidth),
          backgroundDecoration: TableSpanDecoration(
            color: column == 0 ? Colors.yellow.withOpacity(0.3) : null,
            border: TableSpanBorder(
              trailing: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        );
      },
      rowBuilder: (int row) {
        return TableSpan(
          extent: FixedTableSpanExtent(cellWidth),
          backgroundDecoration: TableSpanDecoration(
            color: row == 0 ? Colors.yellow.withOpacity(0.3) : null,
            border: TableSpanBorder(
              trailing: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        );
      },
      cellBuilder: (BuildContext context, TableVicinity vicinity) {
        final product = (vicinity.row + 1) * (vicinity.column + 1);
        return Center(
          child: Text(product.toString()),
        );
      },
    );
  }
}
