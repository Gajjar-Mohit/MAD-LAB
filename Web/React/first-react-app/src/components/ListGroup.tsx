import { useState } from "react";
import Alert from "./Alert";
interface Props {
  items: string[];
  heading: string;
  onSelectItem: (item: string) => void;
}
function ListGroup({ items, heading, onSelectItem }: Props) {
  const getMessage = () => {
    return items.length == 0 ? <p>No Items</p> : null;
  };
  const [selectedIndex, setSelectedIndex] = useState(-1);
  const [selectedItem, setSelectedItem] = useState("");
  return (
    <>
      <h1>{heading}</h1>
      {getMessage}
      <ul className="list-group">
        {items.map((item, value) => (
          <li
            key={item}
            className={
              selectedIndex === value
                ? "list-group-item active"
                : "list-group-item"
            }
            onClick={() => {
              setSelectedIndex(value);
              onSelectItem(item);
              setSelectedItem(item);
            }}
          >
            {item}
          </li>
        ))}
      </ul>
      <Alert text={selectedItem}></Alert>
    </>
  );
}

export default ListGroup;
