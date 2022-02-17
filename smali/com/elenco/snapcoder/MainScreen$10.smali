.class Lcom/elenco/snapcoder/MainScreen$10;
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

.field final synthetic val$drivingAStud:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/MainScreen;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$10;->this$0:Lcom/elenco/snapcoder/MainScreen;

    iput-object p2, p0, Lcom/elenco/snapcoder/MainScreen$10;->val$drivingAStud:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$10;->val$drivingAStud:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/elenco/snapcoder/BotManager;->toggleA(Landroid/widget/ImageView;)V

    .line 343
    return-void
.end method
