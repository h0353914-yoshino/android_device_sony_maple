# Sony Xperia XZP（maple）OrangeFox 16.0

裝置設定參考 lineage-22.2 與 OrangeFox 12.1，使用 Yoshino 共用設定。

```bash
export FOX_BUILD_DEVICE=maple
source build/envsetup.sh
lunch twrp_maple-bp2a-eng
mka recoveryimage
```

輸出至 `out/target/product/maple/`；尚需在實機驗證開機與資料解密。
