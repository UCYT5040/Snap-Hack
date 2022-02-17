.class Lcom/elenco/snapcoder/MainScreen$20$1;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/MainScreen$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/MainScreen$20;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/MainScreen$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/MainScreen$20;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/elenco/snapcoder/MainScreen$20$1;->this$1:Lcom/elenco/snapcoder/MainScreen$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/elenco/snapcoder/MainScreen$20$1;->this$1:Lcom/elenco/snapcoder/MainScreen$20;

    iget-object v0, v0, Lcom/elenco/snapcoder/MainScreen$20;->this$0:Lcom/elenco/snapcoder/MainScreen;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/MainScreen;->checkIfLandscape()V

    .line 816
    return-void
.end method
