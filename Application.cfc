
component {
    this.name = createUUID();
    function onRequestStart() {
        application.priceObject = createObject('component', 'assets.db.database');
    }
}