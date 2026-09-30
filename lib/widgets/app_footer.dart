import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  final bool showLogout;
  final bool showKembali;

  const AppFooter({
    super.key,
    this.showLogout = false,
    this.showKembali = true,
  });

  void _onKembali(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Navigator.pushNamed(context, "/beranda");
    }
  }

  void _onKontak(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Kontak"),
        content: const Text(
          "SMK Negeri 2 Kraksaan\n"
          "Telp: (0335) 123456\n"
          "Email: info@smkn2kraksaan.sch.id",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tutup"),
          ),
        ],
      ),
    );
  }

  void _onBrowser(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Membuka browser..."),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _onLogout(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.orange,
      elevation: 10,
      padding: EdgeInsets.zero,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (showKembali)
            _FooterButton(
              icon: Icons.arrow_back,
              label: "Kembali",
              onTap: () => _onKembali(context),
            ),
          _FooterButton(
            icon: Icons.contact_phone_outlined,
            label: "Kontak",
            onTap: () => _onKontak(context),
          ),
          _FooterButton(
            icon: Icons.language,
            label: "Browser",
            onTap: () => _onBrowser(context),
          ),
          if (showLogout)
            _FooterButton(
              icon: Icons.logout,
              label: "Logout",
              onTap: () => _onLogout(context),
            ),
        ],
      ),
    );
  }
}

class _FooterButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _FooterButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
