.class Lcom/elenco/snapcoder/MainScreen$5;
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
    .line 153
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$5;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$5;->this$0:Lcom/elenco/snapcoder/MainScreen;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/MainScreen;->setSpeed(I)V

    .line 157
    return-void
.end method
