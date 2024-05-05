import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PhoneInputFormatter implements TextInputFormatter {

  final String mask;

  ///mask should be provide as # - unique symbol
  const PhoneInputFormatter({
    required this.mask,
  });

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    debugPrint('---------------REFORMAT------');
    final newText = newValue.text;
    final formattedValue = _formatAsMask(mask, newValue.text);
    final selectionIndex = formattedValue.length;
    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: selectionIndex)
    );
  }
}

String _formatAsMask(String mask, String value) {
  if(mask.length <= value.length) return value;
  final vSymbols = value.split('');
  final mSymbols = mask.split('');
  var maskedValue = '';
  for(final mSymbol in mSymbols) {
    if(maskedValue.length == mask.length) break;
    if(vSymbols.isEmpty) break;
    final vSymbol = vSymbols.first;
    if(mSymbol == '#' || mSymbol == vSymbol) {
      maskedValue += vSymbol;
      vSymbols.removeAt(0);
    }
    else {
      maskedValue += mSymbol;
    }
  }
  return maskedValue;
}