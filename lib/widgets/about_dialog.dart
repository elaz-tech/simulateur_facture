import 'package:flutter/material.dart';
import 'package:simulateur_facture/l10n/app_localizations_manual.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizationsManual.of(context);
    return ListTile(
      title: Text(l10n.about),
      leading: const Icon(Icons.info_outline),
      onTap: () {
        showAboutDialog(
          context: context,
          applicationName: l10n.billCalculator,
          applicationVersion: "1.0.3",
          applicationIcon: const Icon(Icons.receipt_long, size: 48),
          children: [
            const SizedBox(height: 16),
            Text(
              '${l10n.developer}: Fouad El Azbi',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '${l10n.company}: EAF Microservice',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('${l10n.email}: EAF.microservice@gmail.com'),
            const SizedBox(height: 4),
            Text('${l10n.phone}: +212 645 994 904'),
            const SizedBox(height: 16),
            Text(l10n.appDescription),
          ],
        );
      },
    );
  }
}
