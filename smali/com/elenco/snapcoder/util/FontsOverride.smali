.class public final Lcom/elenco/snapcoder/util/FontsOverride;
.super Ljava/lang/Object;
.source "FontsOverride.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static replaceFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 3
    .param p0, "staticTypefaceFieldName"    # Ljava/lang/String;
    .param p1, "newTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 23
    :try_start_0
    const-class v2, Landroid/graphics/Typeface;

    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 25
    .local v1, "staticField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .end local v1    # "staticField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDefaultFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "staticTypefaceFieldName"    # Ljava/lang/String;
    .param p2, "fontAssetName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 17
    .local v0, "regular":Landroid/graphics/Typeface;
    invoke-static {p1, v0}, Lcom/elenco/snapcoder/util/FontsOverride;->replaceFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 18
    return-void
.end method
