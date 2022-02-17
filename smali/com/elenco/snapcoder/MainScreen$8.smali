.class Lcom/elenco/snapcoder/MainScreen$8;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/MainScreen;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/MainScreen;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$8;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-static {}, Lcom/elenco/snapcoder/MainScreen;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clicked Driving Hamburger!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$8;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/MainScreen;->openFlyOutMenu(Landroid/view/View;)V

    .line 273
    return-void
.end method
