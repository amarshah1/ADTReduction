
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (= l3 Nil) (= l3 l1) (is-Cons Nil)) )
(assert (not (is-Nil l2)) )
(assert (or (= l1 l3) (= l2 Nil) (= l3 l2)) )
(assert (and (= l3 Nil) (= l3 l0) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (and (is-Cons l2) (= l0 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (= l0 l1) )
(check-sat)