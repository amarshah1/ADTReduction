
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l2 Nil) (= l0 Nil) (= l1 l0)) )
(assert (and (= l3 Nil) (is-Cons l2) (= l1 Nil)) )
(assert (= l3 l1) )
(assert (and (= l1 l2) (= l1 l1)) )
(assert (and (= l0 l2) (= l2 l1) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 l2) (= l3 Nil)) )
(check-sat)
