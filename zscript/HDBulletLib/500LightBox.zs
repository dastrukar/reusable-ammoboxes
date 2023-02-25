class Legacy_500LightBox : ReusableAmmobox {
	default {
		scale 0.4;

		HDMagAmmo.maxPerUnit 40;
		HDMagAmmo.roundType "HD500SWLightAmmo";
		HDMagAmmo.roundBulk ENC_50SW_LOADED;

		tag "$TAG_500_LIGHT_BOX";
		Inventory.pickupMessage "$PICKUP_500_LIGHT_BOX";
		HDPickup.refId LEGACY_HDLD_500LBOX;

		ReusableAmmobox.fullSprite "5LBXA0";
		ReusableAmmobox.emptySprite "5LBXW0";
		ReusableAmmobox.roundSprite "SWRNA0";
	}

	States {
		Spawn:
			5LBX A -1;
			stop;
		spawnempty:
			5LBX W -1 { brollsprite = true; brollcenter = true; roll = 180; }
			stop;
	}
}