
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
(assert (and (is-Cons Nil) (is-Cons l3) (= l2 l0)) )
(assert (and (= l0 l0) (= l0 l3) (= l1 l2)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Cons l0) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l2 l2)) )
(assert (not (= l0 l1)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (= l1 l2) )
(check-sat)
