.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$13;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->checkIfLandcscape()V

    .line 308
    return-void
.end method
