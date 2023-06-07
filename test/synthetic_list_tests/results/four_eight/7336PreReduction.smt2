
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
(assert (and (= l2 Nil) (= l1 l1) (= l3 Nil)) )
(assert (and (= l2 l0) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (not (= l1 l1)) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Nil l1) (is-Cons l2)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
