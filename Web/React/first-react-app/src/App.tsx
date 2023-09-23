import ListGroup from "./components/ListGroup";
function App() {
  let items = ["one", "two", "three", "four", "five"];

  const handleSelectItem = (item: string) => {
    console.log(item);
  };
  return (
    <div>
      <ListGroup
        items={items}
        heading="Numbers"
        onSelectItem={handleSelectItem}
      />
    </div>
  );
}

export default App;
