
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
(assert (or (= l2 l3) (= l2 l2) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 l3) (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l2) (is-Cons Nil) (is-Cons l2) (= l2 l0)) )
(check-sat)
