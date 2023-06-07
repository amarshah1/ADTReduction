
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
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l1) (= l1 Nil) (is-Cons l3)) )
(assert (and (= l1 Nil) (= l3 l0) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
