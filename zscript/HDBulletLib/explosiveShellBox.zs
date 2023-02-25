class Legacy_ExplosiveShellBox : ReusableAmmobox {
	default {
		scale 0.4;

		HDMagAmmo.insertTime 6;
		HDMagAmmo.extractTime 10;

		HDMagAmmo.maxPerUnit 20;
		HDMagAmmo.roundType "HDExplosiveShellAmmo";
		HDMagAmmo.roundBulk ENC_SHELLLOADED;

		tag "$TAG_EXPLOSIVE_SHELL_BOX";
		Inventory.pickupMessage "$PICKUP_EXPLOSIVE_SHELL_BOX";
		HDPickup.refId LEGACY_HDLD_EXPLOSIVESHELLBOX;

		ReusableAmmobox.extractMax 4;
		ReusableAmmobox.fullSprite "XLBXA0";
		ReusableAmmobox.emptySprite "XLBXW0";
		ReusableAmmobox.roundSprite "XLS1A0";
	}

	States {
		Spawn:
			XLBX A -1;
			stop;
		spawnempty:
			XLBX W -1 { brollsprite = true; brollcenter = true; roll = 180; }
			stop;
	}
}