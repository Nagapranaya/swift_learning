//TableView Delegate Methods


func tableView(UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath)
//The tableview notifies this delegate when it is about to draw a cell for a particular row.
func tableView(UITableView, willSelectRowAt: IndexPath) -> IndexPath?
//The tableview notifies this delegate method when the specified row is about to be selected.
func tableView(UITableView, didSelectRowAt: IndexPath)
//This delegate is notified when the specified row of the tableview is selected.
func tableView(UITableView, willDeselectRowAt: IndexPath) -> IndexPath?
//This delegate is notified when the particular cell is about to be deselected.
func tableView(UITableView, didDeselectRowAt: IndexPath)
//This delegate is notified when the particular row is deselected.
func tableView(UITableView, viewForHeaderInSection: Int) -> UIView?
//This delegate method returns a UIView which represents the header of the tableview.
func tableView(UITableView, viewForFooterInSection: Int) -> UIView?
//This delegate method returns the uiview, which represents the footer of the tableview.
func tableView(UITableView, willDisplayHeaderView: UIView, forSection: Int)
//This delegate method is notified when the tableview is going to display the headerview for the particular section.
func tableView(UITableView, willDisplayFooterView: UIView, forSection: Int)
//This delegate method is notified when the tableview is going to display the footer view for the particular section.
func tableView(UITableView, heightForRowAt: IndexPath) -> CGFloat
//This delegate method returns the height for the row.
func tableView(UITableView, heightForHeaderInSection: Int) -> CGFloat
//This delegate method returns the height of the header of section in the tableview.
func tableView(UITableView, heightForFooterInSection: Int) -> CGFloat
//This delegate method returns the height for the footer of a particular section in the tableview.
func tableView(UITableView, estimatedHeightForRowAt: IndexPath) -> CGFloat
//It asks the delegate for the estimated height of the row in a particular location.
func tableView(UITableView, estimatedHeightForHeaderInSection: Int) -> CGFloat
//It asks the delegate for the estimated height of the header in a particular location.
func tableView(UITableView, estimatedHeightForFooterInSection: Int) -> CGFloat
//It asks the delegate for the estimated height for the footer in the particular section.





//TableView DataSource Methods
func tableView(UITableView, numberOfRowsInSection: Int) -> Int
//This method returns the number of rows to be displayed in the section of the tableview.
func numberOfSections(in: UITableView) -> Int
//This method returns the number of sections to be displayed in the tableview.
func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
//This method returns the object of a UITableViewCell, which shows the actual content of a particular row in the tableview. This method inserts the cell for a particular row in the tableview.
func tableView(UITableView, titleForHeaderInSection: Int) -> String?
//This method returns a string representing the title of the header in the section of the tableview.
func tableView(UITableView, titleForFooterInSection: Int) -> String?
//This method returns a string representing the title of the footer in the section of the tableview.
func tableView(UITableView, canEditRowAt: IndexPath) -> Bool
//It asks the DataSource to verify whether the particular row is editable or not.
func tableView(UITableView, canMoveRowAt: IndexPath) -> Bool
//It asks the DataSource to verify whether the particular row can be moved to another location in the tableview.
func tableView(UITableView, moveRowAt: IndexPath, to: IndexPath)
//This method moves the specific row to some other location in the tableview.
func sectionIndexTitles(for: UITableView) -> [String]?
//It returns the array of the string containing the titles for the sections in the tableview.
